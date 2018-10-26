package com.gavin.service;

import com.gavin.model.Position;

import java.util.List;

public interface PositionService {
    boolean addPosition(Position position);

    boolean deletePosition(Integer pos_id);

    boolean updatePosition(Position position);

    Position getPosition(Integer pos_id);

    List<Position> getPositionAll();
}
