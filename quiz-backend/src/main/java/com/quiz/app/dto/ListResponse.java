package com.quiz.app.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.domain.Page;

import java.util.List;

@Getter
@Setter
public class ListResponse<T> {
    List<T> content;
    int pageNumber;
    int size;
    long totalElements;
    int totalPages;
    boolean last;

    public <E> ListResponse(List<T> content, Page<E> page) {
        this.content = content;
        this.pageNumber = page.getNumber() + 1;
        this.size = page.getSize();
        this.totalElements = page.getTotalElements();
        this.totalPages = page.getTotalPages();
        this.last = page.isLast();
    }

    public static <T, E> ListResponse<T> of(List<T> content, Page<E> page) {
        return new ListResponse<>(content, page);
    }
}
