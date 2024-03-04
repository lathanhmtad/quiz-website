package com.quiz.app.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.quiz.app.constants.ResourceName;
import com.quiz.app.constants.SearchFields;
import com.quiz.app.dto.category.CategoryRequest;
import com.quiz.app.dto.category.CategoryResponse;
import com.quiz.app.dto.participant.ParticipantRequest;
import com.quiz.app.dto.participant.ParticipantResponse;
import com.quiz.app.dto.question.QuizQuestionRequest;
import com.quiz.app.dto.question.QuizQuestionResponse;
import com.quiz.app.dto.quiz.QuizRequest;
import com.quiz.app.dto.quiz.QuizResponse;
import com.quiz.app.entity.Category;
import com.quiz.app.entity.Participant;
import com.quiz.app.entity.Quiz;
import com.quiz.app.entity.QuizQuestion;
import com.quiz.app.mapper.CategoryMapper;
import com.quiz.app.mapper.ParticipantMapper;
import com.quiz.app.mapper.QuizMapper;
import com.quiz.app.mapper.QuizQuestionMapper;
import com.quiz.app.repository.CategoryRepo;
import com.quiz.app.repository.ParticipantRepo;
import com.quiz.app.repository.QuizQuestionRepo;
import com.quiz.app.repository.QuizRepo;
import com.quiz.app.service.CrudService;
import com.quiz.app.service.GenericService;
import jakarta.annotation.PostConstruct;
import lombok.AllArgsConstructor;
import org.springframework.context.ApplicationContext;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;
import org.springframework.web.util.pattern.PathPatternParser;

import java.util.List;

@Component
@AllArgsConstructor
public class GenericMappingRegister {
    private ApplicationContext context;
    private RequestMappingHandlerMapping handlerMapping;

    // controllers
    private GenericController<ParticipantRequest, ParticipantResponse> participantController;
    private GenericController<CategoryRequest, CategoryResponse> categoryController;
    private GenericController<QuizRequest, QuizResponse> quizController;
    private GenericController<QuizQuestionRequest, QuizQuestionResponse> quizQuestionController;

    // services
    private GenericService<Participant, ParticipantRequest, ParticipantResponse> participantService;
    private GenericService<Category, CategoryRequest, CategoryResponse> categoryService;
    private GenericService<Quiz, QuizRequest, QuizResponse> quizService;
    private GenericService<QuizQuestion, QuizQuestionRequest, QuizQuestionResponse> quizQuestionService;

    @PostConstruct
    public void registerControllers() throws NoSuchMethodException {

        register("participants", participantController, participantService.init(
            context.getBean(ParticipantRepo.class),
            context.getBean(ParticipantMapper.class),
                SearchFields.PARTICIPANT,
                ResourceName.PARTICIPANT
        ), ParticipantRequest.class);

        register("categories", categoryController, categoryService.init(
                context.getBean(CategoryRepo.class),
                context.getBean(CategoryMapper.class),
                SearchFields.CATEGORY,
                ResourceName.CATEGORY
        ), CategoryRequest.class);

        register("quizzes", quizController, quizService.init(
                context.getBean(QuizRepo.class),
                context.getBean(QuizMapper.class),
                SearchFields.QUIZ,
                ResourceName.QUIZ
        ), QuizRequest.class);

        register("quiz-questions", quizQuestionController, quizQuestionService.init(
                context.getBean(QuizQuestionRepo.class),
                context.getBean(QuizQuestionMapper.class),
                SearchFields.QUIZ_QUESTION,
                ResourceName.QUIZ_QUESTION
        ), QuizQuestionRequest.class);
    }

    private <I, O> void register(
            String resource,
            GenericController<I, O> controller,
            CrudService<Long, I, O> service,
            Class<I> requestType
    )  throws NoSuchMethodException {
        RequestMappingInfo.BuilderConfiguration options = new RequestMappingInfo.BuilderConfiguration();
        options.setPatternParser(new PathPatternParser());

        controller.setCrudService(service);
        controller.setRequestType(requestType);

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/v1/" + resource)
                        .methods(RequestMethod.GET)
                        .produces(MediaType.APPLICATION_JSON_VALUE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("getAllResources", int.class, int.class,
                        String.class, String.class, String.class, boolean.class)
        );

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/v1/" + resource + "/{id}")
                        .methods(RequestMethod.GET)
                        .produces(MediaType.APPLICATION_JSON_VALUE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("getResource", Long.class)
        );

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/v1/" + resource)
                        .methods(RequestMethod.POST)
                        .consumes(MediaType.APPLICATION_JSON_VALUE)
                        .produces(MediaType.APPLICATION_JSON_VALUE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("createResource", JsonNode.class)
        );

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/v1/" + resource + "/{id}")
                        .methods(RequestMethod.PUT)
                        .consumes(MediaType.APPLICATION_JSON_VALUE)
                        .produces(MediaType.APPLICATION_JSON_VALUE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("updateResource", Long.class, JsonNode.class)
        );

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/v1/" + resource + "/{id}")
                        .methods(RequestMethod.DELETE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("deleteResource", Long.class)
        );

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/v1/" + resource)
                        .methods(RequestMethod.DELETE)
                        .consumes(MediaType.APPLICATION_JSON_VALUE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("deleteResources", List.class)
        );
    }
}
