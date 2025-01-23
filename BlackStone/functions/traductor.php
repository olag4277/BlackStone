
<?php


function lang($sentencia){

$idioma = $_SESSION['idioma'];

    //SYSTEM    
    if($sentencia == "Edit asset"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Editar objetivo";
                break;
            case "FR":
                $sentencia = "Editer objectif";
                break;
            case "EN":
                $sentencia = "Edit asset";
                break;
        }
    }
    if($sentencia == "Objectives details"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Detalles de los objetivos";
                break;
            case "FR":
                $sentencia = "Détails des objectifs";
                break;
            case "EN":
                $sentencia = "Objectives details";
                break;
        }
    }
    if($sentencia == "At the moment we will have to manually insert a graphic or image."){
        switch ($idioma) {
            case "ES":
                $sentencia = "Por el momento deberemos insertar manualmente un gráfico o imagen.";
                break;
            case "FR":
                $sentencia = "Pour l'instant, nous devons insérer manuellement un graphique ou une image.";
                break;
            case "EN":
                $sentencia = "At the moment we will have to manually insert a graphic or image.";
                break;
        }
    }    
    if($sentencia == "Delete"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Eliminar";
                break;
            case "FR":
                $sentencia = "Supprimer";
                break;
            case "EN":
                $sentencia = "Delete";
                break;
        }
    }
    if($sentencia == "Vulnerability images"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Imágenes de vulnerabilidad";
                break;
            case "FR":
                $sentencia = "Images de vulnérabilités";
                break;
            case "EN":
                $sentencia = "Vulnerability images";
                break;
        }
    } 
    if($sentencia == "Manage vulnerabilities"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Gestionar vulnerabilidades";
                break;
            case "FR":
                $sentencia = "Gérer vulnérabilités";
                break;
            case "EN":
                $sentencia = "Manage vulnerabilities";
                break;
        }
    } 
    if($sentencia == "Search Vulnerabilities..."){
        switch ($idioma) {
            case "ES":
                $sentencia = "Buscar Vulnerabilidades...";
                break;
            case "FR":
                $sentencia = "Rechercher vulnérabilités...";
                break;
            case "EN":
                $sentencia = "Search Vulnerabilities...";
                break;
        }
    } 
    if($sentencia == "Order"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Orden";
                break;
            case "FR":
                $sentencia = "Ordre";
                break;
            case "EN":
                $sentencia = "Order";
                break;
        }
    } 
    if($sentencia == "Add vulns"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Añadir vulns";
                break;
            case "FR":
                $sentencia = "Ajouter vulns";
                break;
            case "EN":
                $sentencia = "Add vulns";
                break;
        }
    } 
    if($sentencia == "Add image"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Añadir imagen";
                break;
            case "FR":
                $sentencia = "Ajouter image";
                break;
            case "EN":
                $sentencia = "Add image";
                break;
        }
    } 
    if($sentencia == "Edit values"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Editar valores";
                break;
            case "FR":
                $sentencia = "Editer valeurs";
                break;
            case "EN":
                $sentencia = "Edit values";
                break;
        }
    } 
    if($sentencia == "Vulnerabilities associated with"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Vulnerabilidades asociadas a";
                break;
            case "FR":
                $sentencia = "Vulnérabilités associées à";
                break;
            case "EN":
                $sentencia = "Vulnerabilities associated with";
                break;
        }
    }
    if($sentencia == "Are you interested in cybersecurity?"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Estás interesado en ciberseguridad?";
                break;
            case "FR":
                $sentencia = "Etes-vous intéressés par la cybersécurité ?";
                break;
            case "EN":
                $sentencia = "Are you interested in cybersecurity?";
                break;
        }
    }
    if($sentencia == "Go now"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Ver ahora";
                break;
            case "FR":
                $sentencia = "Voir maintenant";
                break;
            case "EN":
                $sentencia = "Go now";
                break;
        }
    }
    if($sentencia == "Visit all my links!"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Visita todos mis links!";
                break;
            case "FR":
                $sentencia = "Visitez tous mes liens !";
                break;
            case "EN":
                $sentencia = "Visit all my links!";
                break;
        }
    }
    if($sentencia == "Report Objectives"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Objetivos de la auditoría";
                break;
            case "FR":
                $sentencia = "Objectifs de l'audit";
                break;
            case "EN":
                $sentencia = "Report Objectives";
                break;
        }
    }
    if($sentencia == "Add objective"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Añadir objetivo";
                break;
            case "FR":
                $sentencia = "Ajouter objectif";
                break;
            case "EN":
                $sentencia = "Add objective";
                break;
        }
    }
    if($sentencia == "Add objectives"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Añadir objetivos";
                break;
            case "FR":
                $sentencia = "Ajouter cibles";
                break;
            case "EN":
                $sentencia = "Add objectives";
                break;
        }
    }
    if($sentencia == "Objectives"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Objetivos";
                break;
            case "FR":
                $sentencia = "Objectifs";
                break;
            case "EN":
                $sentencia = "Objectives";
                break;
        }
    }
    if($sentencia == "Deadline"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Fecha de entrega";
                break;
            case "FR":
                $sentencia = "Date de livraison";
                break;
            case "EN":
                $sentencia = "Deadline";
                break;
        }
    }
    if($sentencia == "Saved vulnerability"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Vulnerabilidad guardada";
                break;
            case "FR":
                $sentencia = "Vulnérabilité sauvée";
                break;
            case "EN":
                $sentencia = "Saved vulnerability";
                break;
        }
    }
    if($sentencia == "Account settings"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Ajustes de cuenta";
                break;
            case "FR":
                $sentencia = "Paramètres du compte";
                break;
            case "EN":
                $sentencia = "Account settings";
                break;
        }
    }
    if($sentencia == "System Member"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Usuario de sistema";
                break;
            case "FR":
                $sentencia = "Utilisateur du système";
                break;
            case "EN":
                $sentencia = "System Member";
                break;
        }
    }
    if($sentencia == "Dashboard"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Dashboard";
                break;
            case "FR":
                $sentencia = "Tableau de bord";
                break;
            case "EN":
                $sentencia = "Dashboard";
                break;
        }
    }
    if($sentencia == "Navigation"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Navegación";
                break;
            case "FR":
                $sentencia = "Navigation";
                break;
            case "EN":
                $sentencia = "Navigation";
                break;
        }
    }
    if($sentencia == "Search Reports"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Buscar Informes";
                break;
            case "FR":
                $sentencia = "Recherche Rapports";
                break;
            case "EN":
                $sentencia = "Search Reports";
                break;
        }
    }
    if($sentencia == "Profile"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Perfil";
                break;
            case "FR":
                $sentencia = "Profil";
                break;
            case "EN":
                $sentencia = "Profile";
                break;
        }
    }
    if($sentencia == "Log out"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Cerrar sesión";
                break;
            case "FR":
                $sentencia = "Déconnexion";
                break;
            case "EN":
                $sentencia = "Log out";
                break;
        }
    }
    if($sentencia == "Settings"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Ajustes";
                break;
            case "FR":
                $sentencia = "Paramètres";
                break;
            case "EN":
                $sentencia = "Settings";
                break;
        }
    }
    if($sentencia == "Messages"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Mensajes";
                break;
            case "FR":
                $sentencia = "Messages";
                break;
            case "EN":
                $sentencia = "Messages";
                break;
        }
    }
    if($sentencia == "Now"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Ahora";
                break;
            case "FR":
                $sentencia = "Maintenant";
                break;
            case "EN":
                $sentencia = "Now";
                break;
        }
    }
    if($sentencia == "Create New Report"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Crear Nuevo Informe";
                break;
            case "FR":
                $sentencia = "Créer Nouveau Rapport";
                break;
            case "EN":
                $sentencia = "Create New Report";
                break;
        }
    }
    if($sentencia == "Vulnerabilities"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Vulnerabilidades";
                break;
            case "FR":
                $sentencia = "Vulnérabilités";
                break;
            case "EN":
                $sentencia = "Vulnerabilities";
                break;
        }
    }
    if($sentencia == "Audited Client"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Clientes registrados";
                break;
            case "FR":
                $sentencia = "Clients enregistrés";
                break;
            case "EN":
                $sentencia = "Audited Client";
                break;
        }
    }
    if($sentencia == "Auditors"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Auditores";
                break;
            case "FR":
                $sentencia = "Auditeurs";
                break;
            case "EN":
                $sentencia = "Auditors";
                break;
        }
    }
    if($sentencia == "Report"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Informe";
                break;
            case "FR":
                $sentencia = "Rapport";
                break;
            case "EN":
                $sentencia = "Report";
                break;
        }
    }
    if($sentencia == "Reports"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Informes";
                break;
            case "FR":
                $sentencia = "Rapports";
                break;
            case "EN":
                $sentencia = "Reports";
                break;
        }
    }
    if($sentencia == "Report Vulnerabilities"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Vulnerabilidades reportadas";
                break;
            case "FR":
                $sentencia = "Vulnérabilités reportées";
                break;
            case "EN":
                $sentencia = "Report Vulnerabilities";
                break;
        }
    }
    if($sentencia == "Vulns in database"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Vulns en base de datos";
                break;
            case "FR":
                $sentencia = "Vulns en base de données";
                break;
            case "EN":
                $sentencia = "Vulns in database";
                break;
        }
    }
    if($sentencia == "Free Hacking reporting tool from "){
        switch ($idioma) {
            case "ES":
                $sentencia = "Herramienta gratuita de reporting, creada por: ";
                break;
            case "FR":
                $sentencia = "Outil gratuit de reporting, créé par ";
                break;
            case "EN":
                $sentencia = "Free Hacking reporting tool from ";
                break;
        }
    }
    if($sentencia == "List of vulnerabilities"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Listado de vulnerabilidades";
                break;
            case "FR":
                $sentencia = "Liste des vulnérabilités";
                break;
            case "EN":
                $sentencia = "List of vulnerabilities";
                break;
        }
    }
    if($sentencia == "List"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Listado";
                break;
            case "FR":
                $sentencia = "Liste";
                break;
            case "EN":
                $sentencia = "List";
                break;
        }
    }
    if($sentencia == "Description"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Descripción";
                break;
            case "FR":
                $sentencia = "Description";
                break;
            case "EN":
                $sentencia = "Description";
                break;
        }
    }
    if($sentencia == "Description image"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Descripción de la imágen";
                break;
            case "FR":
                $sentencia = "Description de l'image";
                break;
            case "EN":
                $sentencia = "Description image";
                break;
        }
    }
        if($sentencia == "Criticality"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Criticidad";
                break;
            case "FR":
                $sentencia = "Criticité";
                break;
            case "EN":
                $sentencia = "Criticality";
                break;
        }
    }
    if($sentencia == "Low"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Baja";
                break;
            case "FR":
                $sentencia = "Faible";
                break;
            case "EN":
                $sentencia = "Low";
                break;
        }
    }
    if($sentencia == "Medium"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Media";
                break;
            case "FR":
                $sentencia = "Moyenne";
                break;
            case "EN":
                $sentencia = "Medium";
                break;
        }
    }
    if($sentencia == "High"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Alta";
                break;
            case "FR":
                $sentencia = "Haute";
                break;
            case "EN":
                $sentencia = "High";
                break;
        }
    }
    if($sentencia == "Very High"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Muy Alta";
                break;
            case "FR":
                $sentencia = "Critique";
                break;
            case "EN":
                $sentencia = "Very High";
                break;
        }
    }
    if($sentencia == "Edit"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Editar";
                break;
            case "FR":
                $sentencia = "Editer";
                break;
            case "EN":
                $sentencia = "Edit";
                break;
        }
    }
    if($sentencia == "Remove"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Eliminar";
                break;
            case "FR":
                $sentencia = "Supprimer";
                break;
            case "EN":
                $sentencia = "Remove";
                break;
        }
    }
    if($sentencia == "Search vulnerabilities"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Buscar vulnerabilidades";
                break;
            case "FR":
                $sentencia = "Rechercher vulnérabilités";
                break;
            case "EN":
                $sentencia = "Search vulnerabilities";
                break;
        }
    }
    if($sentencia == "NIST calculator"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Calculadora NIST";
                break;
            case "FR":
                $sentencia = "Calculatrice NIST";
                break;
            case "EN":
                $sentencia = "NIST calculator";
                break;
        }
    }
    if($sentencia == "Edit Vulnerability"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Editar vulnerabilidad";
                break;
            case "FR":
                $sentencia = "Editer vulnérabilité";
                break;
            case "EN":
                $sentencia = "Edit Vulnerability";
                break;
        }
    }
    if($sentencia == "Effort"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Esfuerzo";
                break;
            case "FR":
                $sentencia = "Effort";
                break;
            case "EN":
                $sentencia = "Effort";
                break;
        }
    }
    if($sentencia == "Audit section"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Sección auditoria";
                break;
            case "FR":
                $sentencia = "Section audit";
                break;
            case "EN":
                $sentencia = "Audit section";
                break;
        }
    }
    if($sentencia == "Internal audit"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Auditoría interna";
                break;
            case "FR":
                $sentencia = "Audit interne";
                break;
            case "EN":
                $sentencia = "Internal audit";
                break;
        }
    }
    if($sentencia == "External audit"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Auditoría externa";
                break;
            case "FR":
                $sentencia = "Audit externe";
                break;
            case "EN":
                $sentencia = "External audit";
                break;
        }
    }
    if($sentencia == "Wifi audit"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Auditoría wifi";
                break;
            case "FR":
                $sentencia = "Audit wifi";
                break;
            case "EN":
                $sentencia = "Wifi audit";
                break;
        }
    }
    if($sentencia == "Solution"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Solución";
                break;
            case "FR":
                $sentencia = "Solution";
                break;
            case "EN":
                $sentencia = "Solution";
                break;
        }
    }
    if($sentencia == "Recommendation for criticality table"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Recomendación para tabla de criticidad";
                break;
            case "FR":
                $sentencia = "Recommandation pour table de criticité";
                break;
            case "EN":
                $sentencia = "Recommendation for criticality table";
                break;
        }
    }
    if($sentencia == "Add vulnerability"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Añadir vulnerabilidad";
                break;
            case "FR":
                $sentencia = "Ajouter vulnérabilité";
                break;
            case "EN":
                $sentencia = "Add vulnerability";
                break;
        }
    }
    if($sentencia == "Delete vulnerability"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Eliminar vulnerabilidad";
                break;
            case "FR":
                $sentencia = "Supprimer vulnérabilité";
                break;
            case "EN":
                $sentencia = "Delete vulnerability";
                break;
        }
    }
    if($sentencia == "Vulnerability removed from the system"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Vulnerabilidad eliminada del sistema";
                break;
            case "FR":
                $sentencia = "Vulnérabilité supprimée du système";
                break;
            case "EN":
                $sentencia = "Vulnerability removed from the system";
                break;
        }
    }
    if($sentencia == "Return"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Volver";
                break;
            case "FR":
                $sentencia = "Retour";
                break;
            case "EN":
                $sentencia = "Return";
                break;
        }
    }
    if($sentencia == "Customers"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Clientes";
                break;
            case "FR":
                $sentencia = "Clients";
                break;
            case "EN":
                $sentencia = "Customers";
                break;
        }
    }
    if($sentencia == "List of customers"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Listado de clientes";
                break;
            case "FR":
                $sentencia = "Liste des clients";
                break;
            case "EN":
                $sentencia = "List of customers";
                break;
        }
    }
    if($sentencia == "Search customers"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Buscar clientes";
                break;
            case "FR":
                $sentencia = "Rechercher clients";
                break;
            case "EN":
                $sentencia = "Search customers";
                break;
        }
    }
    if($sentencia == "Name"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Nombre";
                break;
            case "FR":
                $sentencia = "Nom";
                break;
            case "EN":
                $sentencia = "Name";
                break;
        }
    }
    if($sentencia == "Web page"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Página web";
                break;
            case "FR":
                $sentencia = "Page web";
                break;
            case "EN":
                $sentencia = "Web page";
                break;
        }
    }
    if($sentencia == "Logo"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Logo";
                break;
            case "FR":
                $sentencia = "Logo";
                break;
            case "EN":
                $sentencia = "Logo";
                break;
        }
    }
    if($sentencia == "Edit company"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Editar empresa";
                break;
            case "FR":
                $sentencia = "Editer entreprise";
                break;
            case "EN":
                $sentencia = "Edit company";
                break;
        }
    }
    if($sentencia == "Links and subdomains"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Links y subdominios";
                break;
            case "FR":
                $sentencia = "Liens et sous domaines";
                break;
            case "EN":
                $sentencia = "Links and subdomains";
                break;
        }
    }
    if($sentencia == "Domain"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Dominio";
                break;
            case "FR":
                $sentencia = "Domaine";
                break;
            case "EN":
                $sentencia = "Domain";
                break;
        }
    }
    if($sentencia == "Email"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Correo";
                break;
            case "FR":
                $sentencia = "Email";
                break;
            case "EN":
                $sentencia = "Email";
                break;
        }
    }
    if($sentencia == "Name and surname"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Nombre y apellidos";
                break;
            case "FR":
                $sentencia = "Prénom et nom";
                break;
            case "EN":
                $sentencia = "Name and surname";
                break;
        }
    }
    if($sentencia == "Phone"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Teléfono";
                break;
            case "FR":
                $sentencia = "Téléphone";
                break;
            case "EN":
                $sentencia = "Phone";
                break;
        }
    }
    if($sentencia == "Owner data"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Datos del propietario";
                break;
            case "FR":
                $sentencia = "Données du propriétaire";
                break;
            case "EN":
                $sentencia = "Owner data";
                break;
        }
    }
    if($sentencia == "Organization"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Organización";
                break;
            case "FR":
                $sentencia = "Organisation";
                break;
            case "EN":
                $sentencia = "Organization";
                break;
        }
    }
    if($sentencia == "Employee emails"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Correos de empleados";
                break;
            case "FR":
                $sentencia = "Emails des employés";
                break;
            case "EN":
                $sentencia = "Employees emails";
                break;
        }
    }
    if($sentencia == "MX Records"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Registros MX";
                break;
            case "FR":
                $sentencia = "MX Records";
                break;
            case "EN":
                $sentencia = "MX Records";
                break;
        }
    }
    if($sentencia == "Edit profile"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Editar perfil";
                break;
            case "FR":
                $sentencia = "Editer profil";
                break;
            case "EN":
                $sentencia = "Edit profile";
                break;
        }
    }
    if($sentencia == "You have reached the search limit on your hunter.io plan"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Ha alcanzado el límite de búsquedas en su plan de hunter.io";
                break;
            case "FR":
                $sentencia = "Vous avez atteint la limite de recherche de votre abonnement hunter.io";
                break;
            case "EN":
                $sentencia = "You have reached the search limit on your hunter.io plan";
                break;
        }
    }
    if($sentencia == "Add client"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Añadir cliente";
                break;
            case "FR":
                $sentencia = "Ajouter client";
                break;
            case "EN":
                $sentencia = "Add client";
                break;
        }
    }
    if($sentencia == "Your clients"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Tus clientes";
                break;
            case "FR":
                $sentencia = "Vos clients";
                break;
            case "EN":
                $sentencia = "Your clients";
                break;
        }
    } 
    if($sentencia == "List of reports"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Lista de informes";
                break;
            case "FR":
                $sentencia = "Liste des rapports";
                break;
            case "EN":
                $sentencia = "List of reports";
                break;
        }
    } 
    if($sentencia == "Search reports"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Buscar informes";
                break;
            case "FR":
                $sentencia = "Rechercher rapports";
                break;
            case "EN":
                $sentencia = "Search reports";
                break;
        }
    }
    if($sentencia == "Report name"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Nombre del informe";
                break;
            case "FR":
                $sentencia = "Nom du rapport";
                break;
            case "EN":
                $sentencia = "Report name";
                break;
        }
    }
    if($sentencia == "State"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Estado";
                break;
            case "FR":
                $sentencia = "Statut";
                break;
            case "EN":
                $sentencia = "State";
                break;
        }
    }
    if($sentencia == "Date"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Fecha";
                break;
            case "FR":
                $sentencia = "Date";
                break;
            case "EN":
                $sentencia = "Date";
                break;
        }
    }
    if($sentencia == "Finalized" or $sentencia == "Terminado"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Terminado";
                break;
            case "FR":
                $sentencia = "Terminé";
                break;
            case "EN":
                $sentencia = "Finalized";
                break;
        }
    }
    if($sentencia == "In process" or $sentencia == "En proceso"){
        switch ($idioma) {
            case "ES":
                $sentencia = "En proceso";
                break;
            case "FR":
                $sentencia = "En cours";
                break;
            case "EN":
                $sentencia = "In process";
                break;
        }
    }
    if($sentencia == "Add report"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Añadir informe";
                break;
            case "FR":
                $sentencia = "Ajouter rapport";
                break;
            case "EN":
                $sentencia = "Add report";
                break;
        }
    }
    if($sentencia == "Delete company"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Eliminar empresa";
                break;
            case "FR":
                $sentencia = "Supprimer entreprise";
                break;
            case "EN":
                $sentencia = "Delete company";
                break;
        }
    }
    if($sentencia == "Company removed from the system"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Empresa eliminada del sistema";
                break;
            case "FR":
                $sentencia = "Entreprise supprimée du système";
                break;
            case "EN":
                $sentencia = "Company removed from the system";
                break;
        }
    }
    if($sentencia == "Save this web in .mhtml format and open it in Word to edit the report!!"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Guarda esta web en formato .mhtml y abrela en Word para editar el informe!!";
                break;
            case "FR":
                $sentencia = "Sauvegarder cette page au format .mhtml et ouvrez là avec Word pour modifier le rapport!!";
                break;
            case "EN":
                $sentencia = "Save this web in .mhtml format and open it in Word to edit the report!!";
                break;
        }
    }
    if($sentencia == "Document name"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Nombre del documento";
                break;
            case "FR":
                $sentencia = "Nom du document";
                break;
            case "EN":
                $sentencia = "Document name";
                break;
        }
    }
    if($sentencia == "Customer name"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Nombre cliente";
                break;
            case "FR":
                $sentencia = "Nom client";
                break;
            case "EN":
                $sentencia = "Customer name";
                break;
        }
    }
    if($sentencia == "Discharge date"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Fecha de alta";
                break;
            case "FR":
                $sentencia = "Date d'autorisation";
                break;
            case "EN":
                $sentencia = "Discharge date";
                break;
        }
    }
    if($sentencia == "Edit report"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Editar informe";
                break;
            case "FR":
                $sentencia = "Modifier rapport";
                break;
            case "EN":
                $sentencia = "Edit report";
                break;
        }
    }
    if($sentencia == "Recommendations"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Recomendaciones";
                break;
            case "FR":
                $sentencia = "Recommandations";
                break;
            case "EN":
                $sentencia = "Recommendations";
                break;
        }
    }
    if($sentencia == "Recommendation"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Recomendación";
                break;
            case "FR":
                $sentencia = "Recommandation";
                break;
            case "EN":
                $sentencia = "Recommendation";
                break;
        }
    }
    if($sentencia == "Conclusions"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Conclusiones";
                break;
            case "FR":
                $sentencia = "Conclusions";
                break;
            case "EN":
                $sentencia = "Conclusions";
                break;
        }
    }
    if($sentencia == "Proposals"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Propuestas";
                break;
            case "FR":
                $sentencia = "Propositions";
                break;
            case "EN":
                $sentencia = "Proposals";
                break;
        }
    }
    if($sentencia == "Add"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Añadir";
                break;
            case "FR":
                $sentencia = "Ajouter";
                break;
            case "EN":
                $sentencia = "Add";
                break;
        }
    }
    if($sentencia == "Description"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Descripción";
                break;
            case "FR":
                $sentencia = "Description";
                break;
            case "EN":
                $sentencia = "Description";
                break;
        }
    }
    if($sentencia == "Section"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Sección";
                break;
            case "FR":
                $sentencia = "Section";
                break;
            case "EN":
                $sentencia = "Section";
                break;
        }
    }
    if($sentencia == "Save"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Guardar";
                break;
            case "FR":
                $sentencia = "Sauvegarder";
                break;
            case "EN":
                $sentencia = "Save";
                break;
        }
    }
    if($sentencia == "Client name"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Nombre de cliente";
                break;
            case "FR":
                $sentencia = "Nom du client";
                break;
            case "EN":
                $sentencia = "Client name";
                break;
        }
    }
    if($sentencia == "Overview report"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Generar informe";
                break;
            case "FR":
                $sentencia = "Générer rapport";
                break;
            case "EN":
                $sentencia = "Overview report";
                break;
        }
    }
    if($sentencia == "Delete report"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Eliminar informe";
                break;
            case "FR":
                $sentencia = "Supprimer rapport";
                break;
            case "EN":
                $sentencia = "Delete report";
                break;
        }
    }
    if($sentencia == "Report removed from the system"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Informe eliminado del sistema";
                break;
            case "FR":
                $sentencia = "Rapport supprimé du système";
                break;
            case "EN":
                $sentencia = "Report removed from the system";
                break;
        }
    }
    if($sentencia == "Recorded vulnerabilities"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Vulnerabilidades registradas";
                break;
            case "FR":
                $sentencia = "Vulnérabilités enregistrées";
                break;
            case "EN":
                $sentencia = "Recorded vulnerabilities";
                break;
        }
    }
    if($sentencia == "Registered companies"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Clientes dados de alta";
                break;
            case "FR":
                $sentencia = "Clients enregistrés";
                break;
            case "EN":
                $sentencia = "Registered companies";
                break;
        }
    }
    if($sentencia == "Reports made"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Informes realizados";
                break;
            case "FR":
                $sentencia = "Rapports réalisés";
                break;
            case "EN":
                $sentencia = "Reports made";
                break;
        }
    }
    if($sentencia == "Last two reports"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Dos últimos informes";
                break;
            case "FR":
                $sentencia = "Deux derniers rapports";
                break;
            case "EN":
                $sentencia = "Last two reports";
                break;
        }
    }
    if($sentencia == "Date:"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Fecha:";
                break;
            case "FR":
                $sentencia = "Date :";
                break;
            case "EN":
                $sentencia = "Date:";
                break;
        }
    }
    if($sentencia == "Vulnerabilities found"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Vulnerabilidades encontradas";
                break;
            case "FR":
                $sentencia = "Vulnérabilités trouvées";
                break;
            case "EN":
                $sentencia = "Vulnerabilities found";
                break;
        }
    }

    //REPORT
      if($sentencia == "LEGAL WARNING"){
        switch ($idioma) {
            case "ES":
                $sentencia = "AVISO LEGAL";
                break;
            case "FR":
                $sentencia = "AVERTISSEMENT LEGAL";
                break;
            case "EN":
                $sentencia = "LEGAL WARNING";
                break;
        }
    }
    if($sentencia == "This document contains confidential and proprietary information which is for the exclusive use of "){
        switch ($idioma) {
            case "ES":
                $sentencia = "Este documento contiene información confidencial y propietaria la cual es de uso exclusivo de ";
                break;
            case "FR":
                $sentencia = "Ce document est confidentiel et l’information qu’il contient est réservée à l’usage exclusif de ";
                break;
            case "EN":
                $sentencia = "This document contains confidential and proprietary information which is for the exclusive use of ";
                break;
        }
    }
    if($sentencia == "Unauthorized reproduction or use of this document is strictly prohibited."){
        switch ($idioma) {
            case "ES":
                $sentencia = "La reproducción o uso no autorizado de este documento está totalmente prohibido.";
                break;
            case "FR":
                $sentencia = "La reproduction ou l'usage non autorisé de ce document est interdit.";
                break;
            case "EN":
                $sentencia = "Unauthorized reproduction or use of this document is strictly prohibited.";
                break;
        }
    }
    if($sentencia == "CONTROL DOCUMENT"){
        switch ($idioma) {
            case "ES":
                $sentencia = "CONTROL DE DOCUMENTO";
                break;
            case "FR":
                $sentencia = "CONTROLE DU DOCUMENT";
                break;
            case "EN":
                $sentencia = "CONTROL DOCUMENT";
                break;
        }
    }
    if($sentencia == "DOCUMENT:"){
        switch ($idioma) {
            case "ES":
                $sentencia = "DOCUMENTO:";
                break;
            case "FR":
                $sentencia = "DOCUMENT :";
                break;
            case "EN":
                $sentencia = "DOCUMENT:";
                break;
        }
    }
    if($sentencia == "NAME"){
        switch ($idioma) {
            case "ES":
                $sentencia = "NOMBRE";
                break;
            case "FR":
                $sentencia = "NOM";
                break;
            case "EN":
                $sentencia = "NAME";
                break;
        }
    }
    if($sentencia == "AUTHOR:"){
        switch ($idioma) {
            case "ES":
                $sentencia = "AUTOR:";
                break;
            case "FR":
                $sentencia = "AUTEUR :";
                break;
            case "EN":
                $sentencia = "AUTHOR:";
                break;
        }
    }
    if($sentencia == "CUSTOMER:"){
        switch ($idioma) {
            case "ES":
                $sentencia = "CLIENTE:";
                break;
            case "FR":
                $sentencia = "CLIENT :";
                break;
            case "EN":
                $sentencia = "CUSTOMER:";
                break;
        }
    }
    if($sentencia == "CONFIDENTIALITY STATEMENT"){
        switch ($idioma) {
            case "ES":
                $sentencia = "DECLARACIÓN DE CONFIDENCIALIDAD";
                break;
            case "FR":
                $sentencia = "DECLARATION DE CONFIDENTIALITE";
                break;
            case "EN":
                $sentencia = "CONFIDENTIALITY STATEMENT";
                break;
        }
    }
    if($sentencia == "This report contains information regarding possible security breaches of "){
        switch ($idioma) {
            case "ES":
                $sentencia = "Este informe contiene la información relativa a las posibles brechas de seguridad de ";
                break;
            case "FR":
                $sentencia = "Ce rapport contient de l'information relative à de possibles brèches de sécurité de ";
                break;
            case "EN":
                $sentencia = "This report contains information regarding possible security breaches of ";
                break;
        }
    }
    if($sentencia == "and their systems."){
        switch ($idioma) {
            case "ES":
                $sentencia = "y sus sistemas.";
                break;
            case "FR":
                $sentencia = "et leurs systèmes.";
                break;
            case "EN":
                $sentencia = "and their systems.";
                break;
        }
    }
    if($sentencia == "recommends that special precautions be taken to"){
        switch ($idioma) {
            case "ES":
                $sentencia = "recomienda que sean tomadas precauciones especiales para";
                break;
            case "FR":
                $sentencia = "recommande que soient prises des précautions particulières pour";
                break;
            case "EN":
                $sentencia = "recommends that special precautions be taken to";
                break;
        }
    }
    if($sentencia == " protect the confidentiality of this document and the information contained in it."){
        switch ($idioma) {
            case "ES":
                $sentencia = "recomienda que sean tomadas precauciones especiales para";
                break;
            case "FR":
                $sentencia = " protéger la confidentialité de ce document et les informations qu'il contient.";
                break;
            case "EN":
                $sentencia = " protect the confidentiality of this document and the information contained in it.";
                break;
        }
    }
    if($sentencia == "has maintained and secured a copy of this report for consultation by the"){
        switch ($idioma) {
            case "ES":
                $sentencia = "recomienda que sean tomadas precauciones especiales para";
                break;
            case "FR":
                $sentencia = "a maintenu et sécurisé une copie de ce rapport pour la consultation par";
                break;
            case "EN":
                $sentencia = "has maintained and secured a copy of this report for consultation by the";
                break;
        }
    }
    if($sentencia == "All other copies of the report have been delivered to "){
        switch ($idioma) {
            case "ES":
                $sentencia = "Todas las demás copias del informe se han entregado a ";
                break;
            case "FR":
                $sentencia = "Toutes les autres copies du rapport ont été remises à ";
                break;
            case "EN":
                $sentencia = "All other copies of the report have been delivered to";
                break;
        }
    }
    if($sentencia == "The security assessment"){
        switch ($idioma) {
            case "ES":
                $sentencia = "La evaluación de la seguridad";
                break;
            case "FR":
                $sentencia = "L'audit de sécurité";
                break;
            case "EN":
                $sentencia = "The security assessment";
                break;
        }
    }
    if($sentencia == "it is an uncertain process, based on experiences, currently available information and known threats."){
        switch ($idioma) {
            case "ES":
                $sentencia = "es un proceso incierto, basado en las experiencias, la información actualmente disponible y las amenazas conocidas.";
                break;
            case "FR":
                $sentencia = "est un processus incertain, basé sur l'expérience, l'information actuellement disponible et les menaces connues.";
                break;
            case "EN":
                $sentencia = "it is an uncertain process, based on experiences, currently available information and known threats.";
                break;
        }
    }
    if($sentencia == "It must be understood that all information systems, by their nature, depend on human beings and are vulnerable in some degree."){
        switch ($idioma) {
            case "ES":
                $sentencia = "Se debe entender que todos los sistemas de información, por su naturaleza dependen de los seres humanos y son vulnerables en cierto grado.";
                break;
            case "FR":
                $sentencia = "Il est nécessaire de comprendre que tous les systèmes d'information, par leur nature, dependent des êtres humains et sont vulnérables à un certain point.";
                break;
            case "EN":
                $sentencia = "It must be understood that all information systems, by their nature, depend on human beings and are vulnerable in some degree.";
                break;
        }
    }
    if($sentencia == "This report"){
        switch ($idioma) {
            case "ES":
                $sentencia = "Este informe";
                break;
            case "FR":
                $sentencia = "Ce rapport";
                break;
            case "EN":
                $sentencia = "This report";
                break;
        }
    }
    if($sentencia == "may recommend that"){
        switch ($idioma) {
            case "ES":
                $sentencia = "podrá recomendar que";
                break;
            case "FR":
                $sentencia = "pourra recommander à";
                break;
            case "EN":
                $sentencia = "may recommend that";
                break;
        }
    }
    if($sentencia == "use certain software or hardware products manufactured"){
        switch ($idioma) {
            case "ES":
                $sentencia = "utilice ciertos productos de software o hardware fabricados";
                break;
            case "FR":
                $sentencia = "d'utiliser certains logiciels ou matériels fabriqués";
                break;
            case "EN":
                $sentencia = "use certain software or hardware products manufactured";
                break;
        }
    }    
    if($sentencia == "or maintained by other providers. BlackStone bases these recommendations on of your previous experience with the capabilities of these products. However, Blackstone cannot and should not guarantee that any particular product will perform as advertised by the seller."){
        switch ($idioma) {
            case "ES": 
                $sentencia = "o mantenidas por otros proveedores. BlackStone  basa estas recomendaciones a partir de su experiencia previa con las capacidades de estos productos. Sin embargo, BlackStone no puede y no debe garantizar que un determinado producto funcionará según lo anunciado por el vendedor.";
                break;
            case "FR":
                $sentencia = "ou maintenus par d'autres fournisseurs. BlackStone base ses recommandations à partir de son expérience passée quant à la capacité de ces produits. Cependant, BlackStone ne peut pas garantir qu'un produit déterminé fonctionnera selon ce qui est annoncé par le vendeur.";
                break;
            case "EN":
                $sentencia = "or maintained by other providers. BlackStone bases these recommendations on of your previous experience with the capabilities of these products. However, Blackstone cannot and should not guarantee that any particular product will perform as advertised by the seller.";
                break;
        }
    }     
    if($sentencia == "INDEX"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "ÍNDICE";
                break;
            case "FR":
                $sentencia = "SOMMAIRE";
                break;
            case "EN":
                $sentencia = "INDEX";
                break;
        }
    }   
    if($sentencia == "(GENERATE INDEX WITH WORD)"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "(GENERAR INDICE CON WORD)";
                break;
            case "FR":
                $sentencia = "(GENERER SOMMAIRE AVEC WORD)";
                break;
            case "EN":
                $sentencia = "(GENERATE INDEX WITH WORD)";
                break;
        }
    }   
    if($sentencia == "INTRODUCTION"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "INTRODUCCIÓN";
                break;
            case "FR":
                $sentencia = "INTRODUCTION";
                break;
            case "EN":
                $sentencia = "INTRODUCTION";
                break;
        }
    }
    if($sentencia == "During the tests, the activities that a real attacker would carry out are simulated, discovering the vulnerabilities, their level of risk, and generating recommendations that allow the client to carry out the remediation of these. Each section of this report details important aspects of how an attacker could use the vulnerability to compromise and gain unauthorized access to sensitive information. Are included In addition, guidelines that, when applied, will improve the levels of confidentiality, integrity and availability of the analyzed systems."){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Durante las pruebas se simulan las actividades que realizaría un atacante real, descubriendo las vulnerabilidades, su nivel de riesgo, y generando recomendaciones que permitan al cliente realizar la remediación de estas. En cada sección de este informe se detallan los aspectos importantes de la forma en que un atacante podría utilizar la vulnerabilidad para comprometer y obtener acceso no autorizado a información sensible. Se incluyen además directrices que al ser aplicadas mejoraran los niveles de confidencialidad, integridad y disponibilidad de los sistemas analizados.";
                break;
            case "FR":
                $sentencia = "Durant les tests, les activités qu'un attaquant réel réaliseraient sont simulées, mettant à jour les vulnérabilités, leurs niveaux de risque, et proposant des recommandations qui permettent au client d'effectuer la remédiation de celles-ci. Dans chaque section de ce rapport sont détaillés les aspects importants sur la façon dont un attaquant pourrait exploiter les vulnérabilités pour compromettre et obtenir un accès non autorisé à de l'information sensible. Sont inclues également des lignes directrices qui, une fois appliquées, amélioreront les niveaux de confidentialité, intégrité et disponibilité des systèmes évalués.";
                break;
            case "EN":
                $sentencia = "During the tests, the activities that a real attacker would carry out are simulated, discovering the vulnerabilities, their level of risk, and generating recommendations that allow the client to carry out the remediation of these. Each section of this report details important aspects of how an attacker could use the vulnerability to compromise and gain unauthorized access to sensitive information. Are included In addition, guidelines that, when applied, will improve the levels of confidentiality, integrity and availability of the analyzed systems.";
                break;
        }
    }
    if($sentencia == "Vulnerability scans and ethical hacking tests were conducted by BlackStone's Red Team during the approved dates. The ethical hacking tests did not explicitly attempt to execute denial-of-service exploits and all of them were carried out without knowledge of users or passwords on the network."){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Los análisis de vulnerabilidades y pruebas de hacking ético fueron realizados por el equipo de Red Team de BlackStone durante las fechas aprobadas. Las pruebas de hacking ético no intentaron explícitamente la ejecución de exploits que implicaran denegación de servicio y todas ellas se realizaron sin conocimiento de usuarios o contraseñas en la red.";
                break;
            case "FR":
                $sentencia = "Les scans de vulnérabilités et les tests d'intrusion ont été réalisés par l'équipe Red Team de BlackStone durant les dates préalablement convenues. Les tests d'intrusion n'ont pas tenté explicitement d'exécuter des exploits impliquant des dénis de service et ont tous été réalisés sans connaissance de comptes utilisateurs ou mots de passe sur le réseau.";
                break;
            case "EN":
                $sentencia = "Vulnerability scans and ethical hacking tests were conducted by BlackStone's Red Team during the approved dates. The ethical hacking tests did not explicitly attempt to execute denial-of-service exploits and all of them were carried out without knowledge of users or passwords on the network.";
                break;
        }
    }
    if($sentencia == "OBJECTIVE"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "OBJETIVO";
                break;
            case "FR":
                $sentencia = "OBJECTIF";
                break;
            case "EN":
                $sentencia = "OBJECTIVE";
                break;
        }
    }
    if($sentencia == "The objective of the security evaluation is to detect the existing security vulnerabilities in the analyzed systems in order to subsequently generate a report with the findings and recommendations that allow their remediation."){
        switch ($idioma) {
            case "ES": 
                $sentencia = "El objetivo de la evaluación de seguridad es detectar las vulnerabilidades de seguridad existentes en los sistemas analizados para posteriormente generar un informe con los hallazgos y recomendaciones que permitan la remediación de estas.";
                break;
            case "FR":
                $sentencia = "L'objectif de l'évaluation de sécurité est de détecter les failles de sécurité existantes sur les systèmes analysés pour, à posteriori, générer un rapport avec les failles découvertes et les recommandations qui permettent leur correction.";
                break;
            case "EN":
                $sentencia = "The objective of the security evaluation is to detect the existing security vulnerabilities in the analyzed systems in order to subsequently generate a report with the findings and recommendations that allow their remediation.";
                break;
        }
    }
    if($sentencia == "SCOPE"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "ALCANCE";
                break;
            case "FR":
                $sentencia = "PERIMETRE";
                break;
            case "EN":
                $sentencia = "SCOPE";
                break;
        }
    }
    if($sentencia == "The evaluation carried out has focused on the objectives approved in the scope of the contract, which establishes:"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "La evaluación realizada se ha centrado en los objetivos aprobados en el alcance del contrato, en el cual se establece:";
                break;
            case "FR":
                $sentencia = "L'évaluation réalisée a porté sur les objectifs approuvés dans le cadre du contrat, qui établit :";
                break;
            case "EN":
                $sentencia = "The evaluation carried out has focused on the objectives approved in the scope of the contract, which establishes:";
                break;
        }
    }
    if($sentencia == "Description activities"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Descripción de actividades";
                break;
            case "FR":
                $sentencia = "Description des activités";
                break;
            case "EN":
                $sentencia = "Description activities";
                break;
        }
    }
    if($sentencia == "EXECUTIVE SUMMARY"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "RESUMEN EJECUTIVO";
                break;
            case "FR":
                $sentencia = "RESUME";
                break;
            case "EN":
                $sentencia = "EXECUTIVE SUMMARY";
                break;
        }
    }
    if($sentencia == "TEST RESULTS"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "RESULTADO DE LAS PRUEBAS";
                break;
            case "FR":
                $sentencia = "RESULTAT DES TESTS";
                break;
            case "EN":
                $sentencia = "TEST RESULTS";
                break;
        }
    }
    if($sentencia == "CONCLUSIONS"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "CONCLUSIONES";
                break;
            case "FR":
                $sentencia = "CONCLUSIONS";
                break;
            case "EN":
                $sentencia = "CONCLUSIONS";
                break;
        }
    }
    if($sentencia == "RECOMMENDATIONS"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "RECOMENDACIONES";
                break;
            case "FR":
                $sentencia = "RECOMMANDATIONS";
                break;
            case "EN":
                $sentencia = "RECOMMENDATIONS";
                break;
        }
    }
    if($sentencia == "Infrastructure improvement proposals"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Propuestas de mejora sobre la infraestructura";
                break;
            case "FR":
                $sentencia = "Propositions d'amélioration de l'infrastructure";
                break;
            case "EN":
                $sentencia = "Infrastructure improvement proposals";
                break;
        }
    }
    if($sentencia == "Criticality table"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Tabla de criticidad";
                break;
            case "FR":
                $sentencia = "Tableau de criticité";
                break;
            case "EN":
                $sentencia = "Criticality table";
                break;
        }
    }
    if($sentencia == "Recommendation"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Recomendación";
                break;
            case "FR":
                $sentencia = "Recommandation";
                break;
            case "EN":
                $sentencia = "Recommendation";
                break;
        }
    }
    if($sentencia == "DOCUMENT CONTROL"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "CONTROL DE DOCUMENTO";
                break;
            case "FR":
                $sentencia = "CONTROLE DU DOCUMENT";
                break;
            case "EN":
                $sentencia = "DOCUMENT CONTROL";
                break;
        }
    }
    if($sentencia == "Vulnerability"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Vulnerabilidad";
                break;
            case "FR":
                $sentencia = "Vulnérabilité";
                break;
            case "EN":
                $sentencia = "Vulnerability";
                break;
        }
    }
    if($sentencia == "Amount"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Cantidad";
                break;
            case "FR":
                $sentencia = "Nombre";
                break;
            case "EN":
                $sentencia = "Amount";
                break;
        }
    }
    if($sentencia == "Percentage"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Porcentaje";
                break;
            case "FR":
                $sentencia = "Pourcentage";
                break;
            case "EN":
                $sentencia = "Percentage";
                break;
        }
    }
    if($sentencia == "Critics"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Críticas";
                break;
            case "FR":
                $sentencia = "Critiques";
                break;
            case "EN":
                $sentencia = "Critics";
                break;
        }
    }
    if($sentencia == "Penetration Test Report for"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Informe de Pentesting para";
                break;
            case "FR":
                $sentencia = "Rapport de tests d'intrusion pour";
                break;
            case "EN":
                $sentencia = "Penetration Test Report for";
                break;
        }
    }
    if($sentencia == "YOU CAN MAKE REPORTS ON AUDITS AND CERTIFICATION EXAMS WITH THE FREE REPORTING TOOL FOR KALI AND PARROT"){
        switch ($idioma) {
            case "ES": 
                $sentencia = "PUEDES REALIZAR INFORMES DE AUDITORÍAS Y EXÁMENES DE CERTIFICACIONES CON LA HERRAMIENTA GRATUITA DE REPORTING PARA KALI Y PARROT";
                break;
            case "FR":
                $sentencia = "VOUS POUVEZ REALISER VOS RAPPORTS D'AUDIT ET EXAMENS DE CERTIFICATION AVEC L'OUTIL GRATUIT DE REPORTING POUR KALI ET PARROT";
                break;
            case "EN":
                $sentencia = "YOU CAN MAKE REPORTS ON AUDITS AND CERTIFICATION EXAMS WITH THE FREE REPORTING TOOL FOR KALI AND PARROT";
                break;
        }
    }

    if($sentencia == "You have to capture a screenshot of this graphic to insert it into Word."){
        switch ($idioma) {
            case "ES": 
                $sentencia = "Tienes que capturar pantalla de este gráfico para insertarlo dentro del Word.";
                break;
            case "FR":
                $sentencia = "Vous devez faire une capture d'écran de ce graphique pour l'insérer dans Word.";
                break;
            case "EN":
                $sentencia = "You have to capture a screenshot of this graphic to insert it into Word.";
                break;
        }
    }

    return $sentencia;
}

?>
