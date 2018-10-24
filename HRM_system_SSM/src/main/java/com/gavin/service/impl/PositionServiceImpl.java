package com.gavin.service.impl;

import com.gavin.dao.PositionDao;
import com.gavin.model.Position;
import com.gavin.service.PositionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PositionServiceImpl implements PositionService {
    @Resource
    private PositionDao positionDao;

    public boolean addPosition(Position position) {
        if (position == null) {
            return false;
        }
        return positionDao.addPosition(position);
    }

    public boolean deletePosition(Integer pos_id) {
        if (pos_id <= 0) {
            return false;
        }
        Position position = new Position();
        position.setPos_id(pos_id);
        return positionDao.deletePosition(position);
    }

    public boolean updatePosition(Integer pos_id) {
        if (pos_id <= 0) {
            return false;
        }
        Position position = new Position();
        position.setPos_id(pos_id);
        return positionDao.updatePosition(position);
    }

    public List<Position> getPositionAll() {
        List<Position> positions = positionDao.getPositionAll();
        if (positions.size() != 0) {
            return positions;
        }
        return null;
    }
}
