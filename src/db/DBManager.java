package db;

import models.Task;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class DBManager {
private static List<Task> tasks=new ArrayList<>();
    protected static long id=1L;
public static void addTask(Task task){
    task.setId(id);
    tasks.add(task);
    id++;
}
    public static Task getTask(Long id){
        return tasks.stream()
                .filter(task -> Objects.equals(id, task.getId()))
                .findFirst().orElse(null);
    }
    public static List<Task> getAllTasks(){
        return tasks;
    }
    void deleteTask(Long id){
        tasks.removeIf(task -> Objects.equals(id, task.getId()));
    }
}
