CREATE DATABASE IF NOT EXISTS monblog;
USE monblog;

-- Structure de la table t_billet
CREATE TABLE t_billet (
  BIL_ID int(11) NOT NULL AUTO_INCREMENT,
  BIL_DATE datetime NOT NULL,
  BIL_TITRE varchar(100) NOT NULL,
  BIL_CONTENU varchar(400) NOT NULL,
  PRIMARY KEY (BIL_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Structure de la table t_commentaire
CREATE TABLE t_commentaire (
  COM_ID int(11) NOT NULL AUTO_INCREMENT,
  COM_DATE datetime NOT NULL,
  COM_AUTEUR varchar(100) NOT NULL,
  COM_CONTENU varchar(200) NOT NULL,
  BIL_ID int(11) NOT NULL,
  PRIMARY KEY (COM_ID),
  KEY FK_BIL_ID (BIL_ID),
  CONSTRAINT FK_BIL_ID FOREIGN KEY (BIL_ID) REFERENCES t_billet (BIL_ID) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Données de test
INSERT INTO t_billet (BIL_DATE, BIL_TITRE, BIL_CONTENU) VALUES
(NOW(), 'Premier Billet', 'Bienvenue sur mon blog déployé avec Kubernetes !'),
(NOW(), 'Docker vs Kubernetes', 'Docker emballe, Kubernetes orchestre.');

INSERT INTO t_commentaire (COM_DATE, COM_AUTEUR, COM_CONTENU, BIL_ID) VALUES
(NOW(), 'Jean', 'Super article !', 1),
(NOW(), 'Admin', 'Merci pour la lecture.', 1);