
DELETE  FROM AncestorIds2 WHERE EXISTS (SELECT 1 FROM MediaItems mi where mi.Id IN (AncestorIds2.ItemId, AncestorIds2.AncestorId) AND  mi.Name = 'Collections' AND mi.type = 4);

DELETE FROM fts_search9_content WHERE EXISTS (SELECT 1 FROM  MediaItems WHERE MediaItems.Id = fts_search9_content.id and MediaItems.Name = 'Collections' AND mi.type = 4);

DELETE  FROM fts_search9_content WHERE EXISTS (SELECT 1 FROM  MediaItems WHERE MediaItems.Id = fts_search9_content.id and MediaItems.Name = 'Collections' AND mi.type = 4);
DELETE FROM fts_search9_data WHERE EXISTS (SELECT 1 FROM MediaItems mi where mi.Id = fts_search9_data.id and mi.Name = 'Collections' AND mi.type = 4);

DELETE FROM itemextradata  WHERE EXISTS (SELECT 1 FROM MediaItems mi where mi.Id = itemextradata.ItemID And mi.Name = 'Collections' AND mi.type = 4);

DELETE FROM itemLinks2 WHERE EXISTS (SELECT 1 FROM  MediaItems mi WHERE  mi.Id IN (itemLinks2.ItemId, itemLinks2.LinkedId) and mi.Name = 'Collections' AND mi.type = 4);

DELETE FROM itempeople2 WHERE EXISTS (SELECT 1 FROM  MediaItems mi WHERE  mi.Id = itempeople2.ItemID AND mi.Name=  'Collections' AND mi.type = 4);
DELETE FROM ListItems WHERE EXISTS (SELECT 1 FROM MediaItems mi where mi.Id IN (ListItems.listid, ListItems.listitemid) AND  mi.Name = 'Collections' AND mi.type = 4);

DELETE FROM MediaItems AS mi WHERE name = 'Collections' AND type = 4;
