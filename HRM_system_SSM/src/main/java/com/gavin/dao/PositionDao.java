package com.gavin.dao;

import com.gavin.model.Position;

import java.util.List;

public interface PositionDao {
    boolean addPosition(Position position);

    boolean deletePosition(Position position);

    boolean updatePosition(Position position);

    List<Position> getPositionAll();
}
