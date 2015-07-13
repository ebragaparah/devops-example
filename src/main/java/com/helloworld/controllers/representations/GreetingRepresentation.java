package com.helloworld.controllers.representations;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

import static lombok.AccessLevel.PRIVATE;

@FieldDefaults(level = PRIVATE)
@AllArgsConstructor
public class GreetingRepresentation {
    @Getter @Setter String message;
}
