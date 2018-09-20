function display_t(hObject,eventdata)
data=guidata(hObject);

if strcmp(hObject.Type,'figure')
    for chs=1:size(hObject.Children,1)
        if numel(hObject.Children(chs).Position)==4
            if hObject.Children(chs).Position==[411,22,25,20]
                set(hObject.Children(chs),'String',num2str(data.val_t));
            end
        end
    end
elseif strcmp(hObject.Type,'uicontrol')
    for chs=1:size(hObject.Parent.Children,1)
        if numel(hObject.Parent.Children(chs).Position)==4
            if hObject.Parent.Children(chs).Position==[411,22,25,20]
                set(hObject.Parent.Children(chs),'String',num2str(data.val_t));
            elseif hObject.Parent.Children(chs).Position==[433,42.9,866,18]
                set(hObject.Parent.Children(chs),'Value',data.val_z);
            end
        end
    end
end

guidata(hObject,data);
display_max(hObject);
end
