USE [Infusion]
GO
/****** Object:  Table [dbo].[Common_BodyPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Common_BodyPartRecord](
	[Id] [int] NOT NULL,
	[ContentItemRecord_id] [int] NULL,
	[Text] [nvarchar](max) NULL,
	[Format] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Common_CommonPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Common_CommonPartRecord](
	[Id] [int] NOT NULL,
	[OwnerId] [int] NULL,
	[CreatedUtc] [datetime] NULL,
	[PublishedUtc] [datetime] NULL,
	[ModifiedUtc] [datetime] NULL,
	[Container_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Common_CommonPartVersionRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Common_CommonPartVersionRecord](
	[Id] [int] NOT NULL,
	[ContentItemRecord_id] [int] NULL,
	[CreatedUtc] [datetime] NULL,
	[PublishedUtc] [datetime] NULL,
	[ModifiedUtc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Common_IdentityPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Common_IdentityPartRecord](
	[Id] [int] NOT NULL,
	[Identifier] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Containers_ContainablePartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Containers_ContainablePartRecord](
	[Id] [int] NOT NULL,
	[Weight] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Containers_ContainerPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Containers_ContainerPartRecord](
	[Id] [int] NOT NULL,
	[Paginated] [bit] NULL,
	[PageSize] [int] NULL,
	[OrderByProperty] [nvarchar](255) NULL,
	[OrderByDirection] [int] NULL,
	[ItemContentType] [nvarchar](255) NULL,
	[ItemsShown] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Containers_ContainerWidgetPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Containers_ContainerWidgetPartRecord](
	[Id] [int] NOT NULL,
	[ContainerId] [int] NULL,
	[PageSize] [int] NULL,
	[OrderByProperty] [nvarchar](255) NULL,
	[OrderByDirection] [int] NULL,
	[ApplyFilter] [bit] NULL,
	[FilterByProperty] [nvarchar](255) NULL,
	[FilterByOperator] [nvarchar](255) NULL,
	[FilterByValue] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Containers_CustomPropertiesPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Containers_CustomPropertiesPartRecord](
	[Id] [int] NOT NULL,
	[CustomOne] [nvarchar](255) NULL,
	[CustomTwo] [nvarchar](255) NULL,
	[CustomThree] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contrib_Taxonomies_TaxonomyMenuItemPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrib_Taxonomies_TaxonomyMenuItemPartRecord](
	[Id] [int] NOT NULL,
	[RenderMenuItem] [bit] NULL,
	[Position] [nvarchar](30) NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contrib_Taxonomies_TaxonomyMenuPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrib_Taxonomies_TaxonomyMenuPartRecord](
	[Id] [int] NOT NULL,
	[TaxonomyPartRecord_id] [int] NULL,
	[TermPartRecord_id] [int] NULL,
	[DisplayTopMenuItem] [bit] NULL,
	[LevelsToDisplay] [int] NULL,
	[DisplayContentCount] [bit] NULL,
	[HideEmptyTerms] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contrib_Taxonomies_TaxonomyPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrib_Taxonomies_TaxonomyPartRecord](
	[Id] [int] NOT NULL,
	[TermTypeName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contrib_Taxonomies_TermContentItem]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrib_Taxonomies_TermContentItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Field] [nvarchar](50) NULL,
	[TermRecord_id] [int] NULL,
	[TermsPartRecord_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contrib_Taxonomies_TermPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrib_Taxonomies_TermPartRecord](
	[Id] [int] NOT NULL,
	[Path] [nvarchar](255) NULL,
	[TaxonomyId] [int] NULL,
	[Count] [int] NULL,
	[Weight] [int] NULL,
	[Selectable] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contrib_Taxonomies_TermsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrib_Taxonomies_TermsPartRecord](
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contrib_Taxonomies_TermWidgetPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrib_Taxonomies_TermWidgetPartRecord](
	[Id] [int] NOT NULL,
	[TaxonomyPartRecord_id] [int] NULL,
	[TermPartRecord_id] [int] NULL,
	[Count] [int] NULL,
	[OrderBy] [nvarchar](255) NULL,
	[FieldName] [nvarchar](255) NULL,
	[ContentType] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Infusion_Documents_DocumentContentPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infusion_Documents_DocumentContentPartRecord](
	[Id] [int] NOT NULL,
	[SourceDocumentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Infusion_Documents_DocumentDocumentContentsRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infusion_Documents_DocumentDocumentContentsRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentPartRecord_Id] [int] NULL,
	[DocumentContentPartRecord_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Infusion_Documents_DocumentPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infusion_Documents_DocumentPartRecord](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Navigation_AdminMenuPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navigation_AdminMenuPartRecord](
	[Id] [int] NOT NULL,
	[AdminMenuText] [nvarchar](255) NULL,
	[AdminMenuPosition] [nvarchar](255) NULL,
	[OnAdminMenu] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Navigation_ContentMenuItemPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navigation_ContentMenuItemPartRecord](
	[Id] [int] NOT NULL,
	[ContentMenuItemRecord_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Navigation_MenuItemPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navigation_MenuItemPartRecord](
	[Id] [int] NOT NULL,
	[Url] [nvarchar](1024) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Navigation_MenuPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navigation_MenuPartRecord](
	[Id] [int] NOT NULL,
	[MenuText] [nvarchar](255) NULL,
	[MenuPosition] [nvarchar](255) NULL,
	[MenuId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Navigation_MenuWidgetPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navigation_MenuWidgetPartRecord](
	[Id] [int] NOT NULL,
	[StartLevel] [int] NULL,
	[Levels] [int] NULL,
	[Breadcrumb] [bit] NULL,
	[AddHomePage] [bit] NULL,
	[AddCurrentPage] [bit] NULL,
	[Menu_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Alias_ActionRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Alias_ActionRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Area] [nvarchar](255) NULL,
	[Controller] [nvarchar](255) NULL,
	[Action] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Alias_AliasRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Alias_AliasRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](2048) NULL,
	[Action_id] [int] NULL,
	[RouteValues] [nvarchar](max) NULL,
	[Source] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Autoroute_AutoroutePartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Autoroute_AutoroutePartRecord](
	[Id] [int] NOT NULL,
	[ContentItemRecord_id] [int] NULL,
	[CustomPattern] [nvarchar](2048) NULL,
	[UseCustomPattern] [bit] NULL,
	[DisplayAlias] [nvarchar](2048) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Blogs_BlogArchivesPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Blogs_BlogArchivesPartRecord](
	[Id] [int] NOT NULL,
	[BlogId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Blogs_BlogPartArchiveRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Blogs_BlogPartArchiveRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[PostCount] [int] NULL,
	[BlogPart_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Blogs_BlogPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Blogs_BlogPartRecord](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[PostCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Blogs_RecentBlogPostsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Blogs_RecentBlogPostsPartRecord](
	[Id] [int] NOT NULL,
	[BlogId] [int] NULL,
	[Count] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Comments_CommentPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Comments_CommentPartRecord](
	[Id] [int] NOT NULL,
	[Author] [nvarchar](255) NULL,
	[SiteName] [nvarchar](255) NULL,
	[UserName] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[CommentDateUtc] [datetime] NULL,
	[CommentText] [nvarchar](max) NULL,
	[CommentedOn] [int] NULL,
	[CommentedOnContainer] [int] NULL,
	[RepliedOn] [int] NULL,
	[Position] [decimal](19, 5) NULL,
	[CommentsPartRecord_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Comments_CommentSettingsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Comments_CommentSettingsPartRecord](
	[Id] [int] NOT NULL,
	[ModerateComments] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Comments_CommentsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Comments_CommentsPartRecord](
	[Id] [int] NOT NULL,
	[CommentsShown] [bit] NULL,
	[CommentsActive] [bit] NULL,
	[ThreadedComments] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_ContentPermissions_ContentPermissionsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_ContentPermissions_ContentPermissionsPartRecord](
	[Id] [int] NOT NULL,
	[Enabled] [bit] NULL,
	[ViewContent] [nvarchar](max) NULL,
	[ViewOwnContent] [nvarchar](max) NULL,
	[PublishContent] [nvarchar](max) NULL,
	[PublishOwnContent] [nvarchar](max) NULL,
	[EditContent] [nvarchar](max) NULL,
	[EditOwnContent] [nvarchar](max) NULL,
	[DeleteContent] [nvarchar](max) NULL,
	[DeleteOwnContent] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Email_SmtpSettingsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Email_SmtpSettingsPartRecord](
	[Id] [int] NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Host] [nvarchar](255) NULL,
	[Port] [int] NULL,
	[EnableSsl] [bit] NULL,
	[RequireCredentials] [bit] NULL,
	[UserName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Framework_ContentItemRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Framework_ContentItemRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[ContentType_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Framework_ContentItemVersionRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Framework_ContentItemVersionRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NULL,
	[Published] [bit] NULL,
	[Latest] [bit] NULL,
	[Data] [nvarchar](max) NULL,
	[ContentItemRecord_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Framework_ContentTypeRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Framework_ContentTypeRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Framework_CultureRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Framework_CultureRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Culture] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Framework_DataMigrationRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Framework_DataMigrationRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataMigrationClass] [nvarchar](255) NULL,
	[Version] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Indexing_IndexingTaskRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Indexing_IndexingTaskRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Action] [int] NULL,
	[CreatedUtc] [datetime] NULL,
	[ContentItemRecord_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Media_MediaSettingsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Media_MediaSettingsPartRecord](
	[Id] [int] NOT NULL,
	[UploadAllowedFileTypeWhitelist] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Messaging_MessageSettingsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Messaging_MessageSettingsPartRecord](
	[Id] [int] NOT NULL,
	[DefaultChannelService] [nvarchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Packaging_PackagingSource]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Packaging_PackagingSource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FeedTitle] [nvarchar](255) NULL,
	[FeedUrl] [nvarchar](2048) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_DecimalFieldIndexRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_DecimalFieldIndexRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyName] [nvarchar](255) NULL,
	[Value] [decimal](19, 5) NULL,
	[FieldIndexPartRecord_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_DoubleFieldIndexRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_DoubleFieldIndexRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyName] [nvarchar](255) NULL,
	[Value] [float] NULL,
	[FieldIndexPartRecord_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_FieldIndexPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_FieldIndexPartRecord](
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_FilterGroupRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_FilterGroupRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QueryPartRecord_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_FilterRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_FilterRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](64) NULL,
	[Type] [nvarchar](64) NULL,
	[Description] [nvarchar](255) NULL,
	[State] [nvarchar](max) NULL,
	[Position] [int] NULL,
	[FilterGroupRecord_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_IntegerFieldIndexRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_IntegerFieldIndexRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyName] [nvarchar](255) NULL,
	[Value] [bigint] NULL,
	[FieldIndexPartRecord_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_LayoutRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_LayoutRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](64) NULL,
	[Type] [nvarchar](64) NULL,
	[Description] [nvarchar](255) NULL,
	[State] [nvarchar](max) NULL,
	[DisplayType] [nvarchar](64) NULL,
	[Display] [int] NULL,
	[QueryPartRecord_id] [int] NULL,
	[GroupProperty_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_MemberBindingRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_MemberBindingRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](255) NULL,
	[Member] [nvarchar](64) NULL,
	[Description] [nvarchar](500) NULL,
	[DisplayName] [nvarchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_NavigationQueryPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_NavigationQueryPartRecord](
	[Id] [int] NOT NULL,
	[Items] [int] NULL,
	[Skip] [int] NULL,
	[QueryPartRecord_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_ProjectionPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_ProjectionPartRecord](
	[Id] [int] NOT NULL,
	[Items] [int] NULL,
	[ItemsPerPage] [int] NULL,
	[Skip] [int] NULL,
	[PagerSuffix] [nvarchar](255) NULL,
	[MaxItems] [int] NULL,
	[DisplayPager] [bit] NULL,
	[QueryPartRecord_id] [int] NULL,
	[LayoutRecord_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_PropertyRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_PropertyRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](64) NULL,
	[Type] [nvarchar](64) NULL,
	[Description] [nvarchar](255) NULL,
	[State] [nvarchar](max) NULL,
	[Position] [int] NULL,
	[LayoutRecord_id] [int] NULL,
	[ExcludeFromDisplay] [bit] NULL,
	[CreateLabel] [bit] NULL,
	[Label] [nvarchar](255) NULL,
	[LinkToContent] [bit] NULL,
	[CustomizePropertyHtml] [bit] NULL,
	[CustomPropertyTag] [nvarchar](64) NULL,
	[CustomPropertyCss] [nvarchar](64) NULL,
	[CustomizeLabelHtml] [bit] NULL,
	[CustomLabelTag] [nvarchar](64) NULL,
	[CustomLabelCss] [nvarchar](64) NULL,
	[CustomizeWrapperHtml] [bit] NULL,
	[CustomWrapperTag] [nvarchar](64) NULL,
	[CustomWrapperCss] [nvarchar](64) NULL,
	[NoResultText] [nvarchar](max) NULL,
	[ZeroIsEmpty] [bit] NULL,
	[HideEmpty] [bit] NULL,
	[RewriteOutput] [bit] NULL,
	[RewriteText] [nvarchar](max) NULL,
	[StripHtmlTags] [bit] NULL,
	[TrimLength] [bit] NULL,
	[AddEllipsis] [bit] NULL,
	[MaxLength] [int] NULL,
	[TrimOnWordBoundary] [bit] NULL,
	[PreserveLines] [bit] NULL,
	[TrimWhiteSpace] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_QueryPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_QueryPartRecord](
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_SortCriterionRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_SortCriterionRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](64) NULL,
	[Type] [nvarchar](64) NULL,
	[Description] [nvarchar](255) NULL,
	[State] [nvarchar](max) NULL,
	[Position] [int] NULL,
	[QueryPartRecord_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Projections_StringFieldIndexRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Projections_StringFieldIndexRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyName] [nvarchar](255) NULL,
	[Value] [nvarchar](4000) NULL,
	[FieldIndexPartRecord_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Roles_PermissionRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Roles_PermissionRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[FeatureName] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Roles_RoleRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Roles_RoleRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Roles_RolesPermissionsRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Roles_RolesPermissionsRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role_id] [int] NULL,
	[Permission_id] [int] NULL,
	[RoleRecord_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Roles_UserRolesPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Roles_UserRolesPartRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Search_SearchSettingsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Search_SearchSettingsPartRecord](
	[Id] [int] NOT NULL,
	[FilterCulture] [bit] NULL,
	[SearchedFields] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Tags_ContentTagRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Tags_ContentTagRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TagRecord_Id] [int] NULL,
	[TagsPartRecord_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Tags_TagRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Tags_TagRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Tags_TagsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Tags_TagsPartRecord](
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Themes_ThemeSiteSettingsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Themes_ThemeSiteSettingsPartRecord](
	[Id] [int] NOT NULL,
	[CurrentThemeName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Users_RegistrationSettingsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Users_RegistrationSettingsPartRecord](
	[Id] [int] NOT NULL,
	[UsersCanRegister] [bit] NULL,
	[UsersMustValidateEmail] [bit] NULL,
	[ValidateEmailRegisteredWebsite] [nvarchar](255) NULL,
	[ValidateEmailContactEMail] [nvarchar](255) NULL,
	[UsersAreModerated] [bit] NULL,
	[NotifyModeration] [bit] NULL,
	[NotificationsRecipients] [nvarchar](max) NULL,
	[EnableLostPassword] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Users_UserPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Users_UserPartRecord](
	[Id] [int] NOT NULL,
	[UserName] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[NormalizedUserName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[PasswordFormat] [nvarchar](255) NULL,
	[HashAlgorithm] [nvarchar](255) NULL,
	[PasswordSalt] [nvarchar](255) NULL,
	[RegistrationStatus] [nvarchar](255) NULL,
	[EmailStatus] [nvarchar](255) NULL,
	[EmailChallengeToken] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Warmup_WarmupSettingsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Warmup_WarmupSettingsPartRecord](
	[Id] [int] NOT NULL,
	[Urls] [nvarchar](max) NULL,
	[Scheduled] [bit] NULL,
	[Delay] [int] NULL,
	[OnPublish] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Widgets_LayerPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Widgets_LayerPartRecord](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[LayerRule] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orchard_Widgets_WidgetPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orchard_Widgets_WidgetPartRecord](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Position] [nvarchar](255) NULL,
	[Zone] [nvarchar](255) NULL,
	[RenderTitle] [bit] NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Scheduling_ScheduledTaskRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scheduling_ScheduledTaskRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskType] [nvarchar](255) NULL,
	[ScheduledUtc] [datetime] NULL,
	[ContentItemVersionRecord_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_ContentFieldDefinitionRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_ContentFieldDefinitionRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_ContentPartDefinitionRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_ContentPartDefinitionRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Hidden] [bit] NULL,
	[Settings] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_ContentPartFieldDefinitionRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_ContentPartFieldDefinitionRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Settings] [nvarchar](max) NULL,
	[ContentFieldDefinitionRecord_id] [int] NULL,
	[ContentPartDefinitionRecord_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_ContentTypeDefinitionRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_ContentTypeDefinitionRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[DisplayName] [nvarchar](255) NULL,
	[Hidden] [bit] NULL,
	[Settings] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_ContentTypePartDefinitionRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_ContentTypePartDefinitionRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Settings] [nvarchar](max) NULL,
	[ContentPartDefinitionRecord_id] [int] NULL,
	[ContentTypeDefinitionRecord_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_ShellDescriptorRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_ShellDescriptorRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SerialNumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_ShellFeatureRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_ShellFeatureRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[ShellDescriptorRecord_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_ShellFeatureStateRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_ShellFeatureStateRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[InstallState] [nvarchar](255) NULL,
	[EnableState] [nvarchar](255) NULL,
	[ShellStateRecord_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_ShellParameterRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_ShellParameterRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Component] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Value] [nvarchar](255) NULL,
	[ShellDescriptorRecord_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_ShellStateRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_ShellStateRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Unused] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_SiteSettings2PartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_SiteSettings2PartRecord](
	[Id] [int] NOT NULL,
	[BaseUrl] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings_SiteSettingsPartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings_SiteSettingsPartRecord](
	[Id] [int] NOT NULL,
	[SiteSalt] [nvarchar](255) NULL,
	[SiteName] [nvarchar](255) NULL,
	[SuperUser] [nvarchar](255) NULL,
	[PageTitleSeparator] [nvarchar](255) NULL,
	[HomePage] [nvarchar](255) NULL,
	[SiteCulture] [nvarchar](255) NULL,
	[ResourceDebugMode] [nvarchar](255) NULL,
	[PageSize] [int] NULL,
	[SiteTimeZone] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Title_TitlePartRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Title_TitlePartRecord](
	[Id] [int] NOT NULL,
	[ContentItemRecord_id] [int] NULL,
	[Title] [nvarchar](1024) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vandelay_Industries_ThemePickerSettingsRecord]    Script Date: 11/14/2012 6:53:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vandelay_Industries_ThemePickerSettingsRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RuleType] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Criterion] [nvarchar](255) NOT NULL,
	[Theme] [nvarchar](255) NOT NULL,
	[Priority] [int] NOT NULL,
	[Zone] [nvarchar](255) NOT NULL,
	[Position] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (8, 8, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a nibh ut tortor dapibus vestibulum. Aliquam vel sem nibh. Suspendisse vel condimentum tellus.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (9, 9, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a nibh ut tortor dapibus vestibulum. Aliquam vel sem nibh. Suspendisse vel condimentum tellus.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (10, 10, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a nibh ut tortor dapibus vestibulum. Aliquam vel sem nibh. Suspendisse vel condimentum tellus.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (12, 12, N'<p>You''ve successfully setup your Orchard Site and this is the homepage of your new site.
Here are a few things you can look at to get familiar with the application.
Once you feel confident you don''t need this anymore, you can
<a href="Admin/Contents/Edit/12">remove it by going into editing mode</a>
and replacing it with whatever you want.</p>
<p>First things first - You''ll probably want to <a href="Admin/Settings">manage your settings</a>
and configure Orchard to your liking. After that, you can head over to
<a href="Admin/Themes">manage themes to change or install new themes</a>
and really make it your own. Once you''re happy with a look and feel, it''s time for some content.
You can start creating new custom content types or start from the built-in ones by
<a href="Admin/Contents/Create/Page">adding a page</a>, or <a href="Admin/Navigation">managing your menus.</a></p>
<p>Finally, Orchard has been designed to be extended. It comes with a few built-in
modules such as pages and blogs or themes. If you''re looking to add additional functionality,
you can do so by creating your own module or by installing one that somebody else built.
Modules are created by other users of Orchard just like you so if you feel up to it,
<a href="http://orchardproject.net/contribution">please consider participating</a>.</p>
<p>Thanks for using Orchard – The Orchard Team </p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (16, 12, N'<p>Welcome to <em>Infusion</em>, your document management system for marketing content. Here you can view and manage all your marketing documents, tailoring them to your specific needs.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (18, 16, N'<p>In today&rsquo;s evolving health coverage environment, you need a patient assistance partner with the expertise and service quality to properly identify and support the changing needs of uninsured and underinsured patients. Lash Group&rsquo;s strategic design, implementation and on-going evaluation of patient assistance programs ensure you are consistently and compassionately providing the most effective product access for your patients.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (20, 18, N'<p>In today&rsquo;s evolving health coverage environment, you need a patient assistance partner with the expertise and service quality to properly identify uninsured and underinsured patients and help educate them on their drug access options. Lash Group provides on-going guidance and proven leadership for progressing your patient assistance programs to meet changing market needs.</p>
<p>With over two decades of experience across a range of therapeutic areas, Lash Group strategically designs and implements patient assistance programs that direct aid to the most appropriate patients. We offer a range of PAP models, distribution methods and customizable processes to best support your product and patient needs. And available integration with our reimbursement and copay programs further ensures that assistance funds are used effectively and efficiently.</p>
<p>Lash Group&rsquo;s exceptional level of service provides accurate and timely processing with a caring, respectful approach. Our associates have advanced credentials and program-specific training to ensure quality in handling patient and provider needs, and our unmatched retention rates maximize the consistency of your program delivery.</p>
<p>Our innovative technology makes your program easy for providers to use &ndash; from our online data portal for enrollment and tracking to our Lash Group Complete card for seamless payment processing. Plus you can monitor and optimize your program through our manufacturer reporting portal and data analytics. Lash Group&rsquo;s strategic program design, service quality and technology ensure you are consistently and compassionately providing the most effective product access for your patients. And our consultative approach and industry expertise provide the value-added insight needed to keep your patient assistance programs aligned with your business goals and the evolving needs of the healthcare market.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (24, 20, N'<p>Lash Group&rsquo;s array of copay products makes your brand more successful by enhancing speed-to-therapy and increasing patient adherence. With cards uniquely designed to work seamlessly with healthcare provider processes and e-prescribing systems, our tailored copay programs ensure appropriate assistance and expanded access, so you can spend less time worrying about patient drop off.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (26, 22, N'<p>Lash Group&rsquo;s array of copay products makes your brand more successful by enhancing speed-to-therapy and increasing patient adherence. With cards uniquely designed to work seamlessly with healthcare provider processes and e-prescribing systems, our tailored copay programs ensure appropriate assistance and expanded access, so you can spend less time worrying about patient drop off.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (27, 23, N'<p>With over 20 years of recognized expertise in patient and provider support programs, Lash Group introduces our next generation of copay assistance solutions. We bring a strategic and collaborative approach to the design and execution of innovative copay assistance programs, utilizing our deep knowledge of healthcare regulations and reform to ensure the most effective and appropriate access to your products. And with our scale and experience in managing over 100 programs, we are able to implement in a more efficient manner with a faster time-to-market.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (29, 25, N'<div style="float: left; width: 312px; height: 219px; background-color: #f15c22; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Elevator Pitch</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="float: left; width: 312px; height: 219px; background-color: #dbd8db; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Pain Points</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="clear: both;"></div>
<div style="float: left; width: 312px; height: 219px; background-color: #28bdb3; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">FAQs</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="float: left; width: 312px; height: 219px; background-color: #f4911e; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Benefits</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (30, 25, N'<div style="float: left;">
<div style="float: left; width: 312px; height: 219px; background-color: #f15c22; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Elevator Pitch</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="float: left; width: 312px; height: 219px; background-color: #dbd8db; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Pain Points</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="clear: both;"></div>
<div style="float: left; width: 312px; height: 219px; background-color: #28bdb3; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">FAQs</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="float: left; width: 312px; height: 219px; background-color: #f4911e; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Benefits</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
</div>
<div style="width: 240px; float: right;">
<div style="float: right; width: 240px; margin-right: 15px;">
<div style="text-transform: uppercase; font-weight: bold; padding-bottom: 2px; border-bottom: 1px solid #595a5c; width: 240px;">Relevant Resources</div>
<div style="position: absolute; top: 36px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">Presentations</span></div>
<div style="width: 100%; height: 17px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 17px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
<div style="position: absolute; top: 102px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">White Papers</span></div>
<div style="width: 100%; height: 17px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 17px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
<div style="position: absolute; top: 168px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">Case Studies</span></div>
<div style="width: 100%; height: 17px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 17px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
</div>
<div style="position: relative; top: 225px; float: right; width: 240px; margin-right: 15px;">
<div style="text-transform: uppercase; font-weight: bold; padding-bottom: 2px; border-bottom: 1px solid #595a5c; width: 240px;">Trending Now</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
</div>
</div>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (31, 25, N'<div style="float: left;">
<div style="float: left; width: 312px; height: 219px; background-color: #f15c22; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Elevator Pitch</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="float: left; width: 312px; height: 219px; background-color: #dbd8db; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Pain Points</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="clear: both;"></div>
<div style="float: left; width: 312px; height: 219px; background-color: #28bdb3; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">FAQs</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="float: left; width: 312px; height: 219px; background-color: #f4911e; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Benefits</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
</div>
<div style="width: 240px; float: right;">
<div style="float: right; width: 240px; margin-right: 15px;">
<div style="text-transform: uppercase; font-weight: bold; padding-bottom: 2px; border-bottom: 1px solid #595a5c; width: 240px;">Relevant Resources</div>
<div style="margin-top: 5px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">Presentations</span></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
<div style="margin-top: 5px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">White Papers</span></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
<div style="margin-top: 5px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">Case Studies</span></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
</div>
<div style="margin-top: 25px; float: right; width: 240px; margin-right: 15px;">
<div style="text-transform: uppercase; font-weight: bold; padding-bottom: 2px; border-bottom: 1px solid #595a5c; width: 240px;">Trending Now</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
</div>
</div>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (32, 25, N'<div style="float: left;">
<div style="float: left; width: 312px; height: 219px; background-color: #f15c22; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Elevator Pitch</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="float: left; width: 312px; height: 219px; background-color: #dbd8db; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Pain Points</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="clear: both;"></div>
<div style="float: left; width: 312px; height: 219px; background-color: #28bdb3; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">FAQs</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
<div style="float: left; width: 312px; height: 219px; background-color: #f4911e; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Benefits</h3>
<div style="width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 9px 29px -18px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 9px 29px -18px #333333; -ms-box-shadow: inset 5px 9px 29px -18px #333333; box-shadow: inset 5px 9px 29px -18px #333333;"></div>
</div>
</div>
<div style="width: 240px; float: right;">
<div style="float: right; width: 240px;">
<div style="text-transform: uppercase; font-weight: bold; padding-bottom: 2px; border-bottom: 1px solid #595a5c; width: 240px;">Relevant Resources</div>
<div style="margin-top: 5px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">Presentations</span></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
<div style="margin-top: 5px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">White Papers</span></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
<div style="margin-top: 5px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">Case Studies</span></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 19px; overflow: ellipsis;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
</div>
<div style="margin-top: 25px; float: right; width: 240px;">
<div style="text-transform: uppercase; font-weight: bold; padding-bottom: 2px; border-bottom: 1px solid #595a5c; width: 240px;">Trending Now</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
</div>
</div>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (33, 25, N'<div style="float: left;">
<div style="float: left; width: 312px; height: 219px; background-color: #f15c22; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Elevator Pitch</h3>
<div style="overflow-y: scroll; overflow-x: hidden; padding: 5px 0 0 5px; width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 5px 23px -5px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 5px 23px -5px #333333; -ms-box-shadow: inset 5px 5px 23px -5px #333333; box-shadow: inset 5px 5px 23px -5px #333333;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere, diam id viverra dignissim, leo ante pharetra dolor, sed convallis dolor ligula nec tellus. Sed rhoncus euismod purus, vitae pellentesque mauris bibendum a. Aliquam pellentesque augue ac velit elementum imperdiet non ac est. Nunc scelerisque vulputate iaculis. Morbi dapibus pharetra magna vel sodales. Vestibulum imperdiet tempor felis, ut consectetur purus iaculis non. Praesent ultrices, augue consequat venenatis egestas, nulla nulla placerat est, id congue turpis risus nec lorem. Duis tincidunt rhoncus tempus. Curabitur scelerisque, elit vitae aliquam dapibus, urna turpis elementum neque, tempus vehicula ligula arcu sit amet sem. In fermentum auctor neque vel sagittis. Quisque auctor mi in ante venenatis pharetra. Quisque sollicitudin pharetra nulla adipiscing mollis. Donec dignissim dapibus purus nec ultrices. Nam volutpat accumsan eros nec pharetra. Sed non arcu eu metus ultricies consequat vel et massa.</div>
</div>
<div style="float: left; width: 312px; height: 219px; background-color: #dbd8db; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Pain Points</h3>
<div style="overflow-y: scroll; overflow-x: hidden; padding: 5px 0 0 5px; width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 5px 23px -5px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 5px 23px -5px #333333; -ms-box-shadow: inset 5px 5px 23px -5px #333333; box-shadow: inset 5px 5px 23px -5px #333333;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere, diam id viverra dignissim, leo ante pharetra dolor, sed convallis dolor ligula nec tellus. Sed rhoncus euismod purus, vitae pellentesque mauris bibendum a. Aliquam pellentesque augue ac velit elementum imperdiet non ac est. Nunc scelerisque vulputate iaculis. Morbi dapibus pharetra magna vel sodales. Vestibulum imperdiet tempor felis, ut consectetur purus iaculis non. Praesent ultrices, augue consequat venenatis egestas, nulla nulla placerat est, id congue turpis risus nec lorem. Duis tincidunt rhoncus tempus. Curabitur scelerisque, elit vitae aliquam dapibus, urna turpis elementum neque, tempus vehicula ligula arcu sit amet sem. In fermentum auctor neque vel sagittis. Quisque auctor mi in ante venenatis pharetra. Quisque sollicitudin pharetra nulla adipiscing mollis. Donec dignissim dapibus purus nec ultrices. Nam volutpat accumsan eros nec pharetra. Sed non arcu eu metus ultricies consequat vel et massa.</div>
</div>
<div style="clear: both;"></div>
<div style="float: left; width: 312px; height: 219px; background-color: #28bdb3; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">FAQs</h3>
<div style="overflow-y: scroll; overflow-x: hidden; padding: 5px 0 0 5px; width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 5px 23px -5px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 5px 23px -5px #333333; -ms-box-shadow: inset 5px 5px 23px -5px #333333; box-shadow: inset 5px 5px 23px -5px #333333;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere, diam id viverra dignissim, leo ante pharetra dolor, sed convallis dolor ligula nec tellus. Sed rhoncus euismod purus, vitae pellentesque mauris bibendum a. Aliquam pellentesque augue ac velit elementum imperdiet non ac est. Nunc scelerisque vulputate iaculis. Morbi dapibus pharetra magna vel sodales. Vestibulum imperdiet tempor felis, ut consectetur purus iaculis non. Praesent ultrices, augue consequat venenatis egestas, nulla nulla placerat est, id congue turpis risus nec lorem. Duis tincidunt rhoncus tempus. Curabitur scelerisque, elit vitae aliquam dapibus, urna turpis elementum neque, tempus vehicula ligula arcu sit amet sem. In fermentum auctor neque vel sagittis. Quisque auctor mi in ante venenatis pharetra. Quisque sollicitudin pharetra nulla adipiscing mollis. Donec dignissim dapibus purus nec ultrices. Nam volutpat accumsan eros nec pharetra. Sed non arcu eu metus ultricies consequat vel et massa.</div>
</div>
<div style="float: left; width: 312px; height: 219px; background-color: #f4911e; padding: 21px 0 0 23px;">
<h3 style="color: #fff; text-transform: uppercase;">Benefits</h3>
<div style="overflow-y: scroll; overflow-x: hidden; padding: 5px 0 0 5px; width: 287px; height: 156px; background-color: #fff; -webkit-box-shadow: inset 5px 5px 23px -5px #333333; -moz-box-shadow: inset 5px 9px 39px -18px #333333; -o-box-shadow: inset 5px 5px 23px -5px #333333; -ms-box-shadow: inset 5px 5px 23px -5px #333333; box-shadow: inset 5px 5px 23px -5px #333333;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere, diam id viverra dignissim, leo ante pharetra dolor, sed convallis dolor ligula nec tellus. Sed rhoncus euismod purus, vitae pellentesque mauris bibendum a. Aliquam pellentesque augue ac velit elementum imperdiet non ac est. Nunc scelerisque vulputate iaculis. Morbi dapibus pharetra magna vel sodales. Vestibulum imperdiet tempor felis, ut consectetur purus iaculis non. Praesent ultrices, augue consequat venenatis egestas, nulla nulla placerat est, id congue turpis risus nec lorem. Duis tincidunt rhoncus tempus. Curabitur scelerisque, elit vitae aliquam dapibus, urna turpis elementum neque, tempus vehicula ligula arcu sit amet sem. In fermentum auctor neque vel sagittis. Quisque auctor mi in ante venenatis pharetra. Quisque sollicitudin pharetra nulla adipiscing mollis. Donec dignissim dapibus purus nec ultrices. Nam volutpat accumsan eros nec pharetra. Sed non arcu eu metus ultricies consequat vel et massa.</div>
</div>
</div>
<div style="width: 240px; float: right;">
<div style="float: right; width: 240px; margin-right: 15px;">
<div style="text-transform: uppercase; font-weight: bold; padding-bottom: 2px; border-bottom: 1px solid #595a5c; width: 240px;">Relevant Resources</div>
<div style="margin-top: 5px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">Presentations</span></div>
<div style="width: 100%; height: 19px; overflow: hidden;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 19px; overflow: hidden;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
<div style="margin-top: 5px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">White Papers</span></div>
<div style="width: 100%; height: 19px; overflow: hidden;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 19px; overflow: hidden;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
<div style="margin-top: 5px; width: 240px;">
<div style="height: 25px; background-color: #d5d110;"><span style="line-height: 25px; margin-left: 15px; color: #fff; text-transform: uppercase; font-weight: bold;">Case Studies</span></div>
<div style="width: 100%; height: 19px; overflow: hidden;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
<div style="width: 100%; height: 19px; overflow: hidden;"><a style="color: #595a5c; text-decoration: none;">Disaster Recovery in Private Sector</a></div>
</div>
</div>
<div style="margin-top: 5px; float: right; width: 240px; margin-right: 15px;">
<div style="text-transform: uppercase; font-weight: bold; padding-bottom: 2px; border-bottom: 1px solid #595a5c; width: 240px;">Trending Now</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
<div style="margin-bottom: 5px; height: 62px; width: 240px; margin-top: -10px; background: linear-gradient(top, #e8e9ea 0%, #f3f3f4 100%);">
<p style="margin-left: 5px; height: 58px; width: 235px; overflow: hidden; color: #4546f9;">NEWS: <span style="color: #595a5c;">Announces new smart cloud technology to change the world and make magic super duper special kind of stuff.</span></p>
</div>
</div>
</div>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (48, 23, N'<p>With over 20 years of recognized expertise in patient and provider support programs, Lash Group introduces our next generation of copay assistance solutions. We bring a strategic and collaborative approach to the design and execution of innovative copay assistance programs, utilizing our deep knowledge of healthcare regulations and reform to ensure the most effective and appropriate access to your products. And with our scale and experience in managing over 100 programs, we are able to implement in a more efficient manner with a faster time-to-market.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (50, 22, N'<p>Lash Group&rsquo;s array of copay products makes your brand more successful by enhancing speed-to-therapy and increasing patient adherence. With cards uniquely designed to work seamlessly with healthcare provider processes and e-prescribing systems, our tailored copay programs ensure appropriate assistance and expanded access, so you can spend less time worrying about patient drop off.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (52, 23, N'<p>With over 20 years of recognized expertise in patient and provider support programs, Lash Group introduces our next generation of copay assistance solutions. We bring a strategic and collaborative approach to the design and execution of innovative copay assistance programs, utilizing our deep knowledge of healthcare regulations and reform to ensure the most effective and appropriate access to your products. And with our scale and experience in managing over 100 programs, we are able to implement in a more efficient manner with a faster time-to-market.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (53, 20, N'<p>Lash Group&rsquo;s array of copay products makes your brand more successful by enhancing speed-to-therapy and increasing patient adherence. With cards uniquely designed to work seamlessly with healthcare provider processes and e-prescribing systems, our tailored copay programs ensure appropriate assistance and expanded access, so you can spend less time worrying about patient drop off.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (54, 18, N'<p>In today&rsquo;s evolving health coverage environment, you need a patient assistance partner with the expertise and service quality to properly identify uninsured and underinsured patients and help educate them on their drug access options. Lash Group provides on-going guidance and proven leadership for progressing your patient assistance programs to meet changing market needs.</p>
<p>With over two decades of experience across a range of therapeutic areas, Lash Group strategically designs and implements patient assistance programs that direct aid to the most appropriate patients. We offer a range of PAP models, distribution methods and customizable processes to best support your product and patient needs. And available integration with our reimbursement and copay programs further ensures that assistance funds are used effectively and efficiently.</p>
<p>Lash Group&rsquo;s exceptional level of service provides accurate and timely processing with a caring, respectful approach. Our associates have advanced credentials and program-specific training to ensure quality in handling patient and provider needs, and our unmatched retention rates maximize the consistency of your program delivery.</p>
<p>Our innovative technology makes your program easy for providers to use &ndash; from our online data portal for enrollment and tracking to our Lash Group Complete card for seamless payment processing. Plus you can monitor and optimize your program through our manufacturer reporting portal and data analytics. Lash Group&rsquo;s strategic program design, service quality and technology ensure you are consistently and compassionately providing the most effective product access for your patients. And our consultative approach and industry expertise provide the value-added insight needed to keep your patient assistance programs aligned with your business goals and the evolving needs of the healthcare market.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (55, 16, N'<p>In today&rsquo;s evolving health coverage environment, you need a patient assistance partner with the expertise and service quality to properly identify and support the changing needs of uninsured and underinsured patients. Lash Group&rsquo;s strategic design, implementation and on-going evaluation of patient assistance programs ensure you are consistently and compassionately providing the most effective product access for your patients.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (56, 23, N'<p>With over 20 years of recognized expertise in patient and provider support programs, Lash Group introduces our next generation of copay assistance solutions. We bring a strategic and collaborative approach to the design and execution of innovative copay assistance programs, utilizing our deep knowledge of healthcare regulations and reform to ensure the most effective and appropriate access to your products. And with our scale and experience in managing over 100 programs, we are able to implement in a more efficient manner with a faster time-to-market.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (58, 23, N'<p>With over 20 years of recognized expertise in patient and provider support programs, Lash Group introduces our next generation of copay assistance solutions. We bring a strategic and collaborative approach to the design and execution of innovative copay assistance programs, utilizing our deep knowledge of healthcare regulations and reform to ensure the most effective and appropriate access to your products. And with our scale and experience in managing over 100 programs, we are able to implement in a more efficient manner with a faster time-to-market.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (59, 23, N'<p>With over 20 years of recognized expertise in patient and provider support programs, Lash Group introduces our next generation of copay assistance solutions. We bring a strategic and collaborative approach to the design and execution of innovative copay assistance programs, utilizing our deep knowledge of healthcare regulations and reform to ensure the most effective and appropriate access to your products. And with our scale and experience in managing over 100 programs, we are able to implement in a more efficient manner with a faster time-to-market.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (61, 38, N'<p>I know my shit</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (63, 40, N'<p>Here we go.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (66, 43, N'<p>1. Over two decades of recognized expertise in the design and implementation of patient assistance programs</p>
<p>2. Strategic program design, service quality and innovative technology ensure effective and compassionate product access</p>
<p>3. Provide value-added insight to keep programs aligned with business goals and the evolving needs of the healthcare market</p>
<p></p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (67, 44, N'<p>In today&rsquo;s evolving health coverage environment, you need a patient assistance partner with the expertise and service quality to properly identify and support the changing needs of uninsured and underinsured patients. Lash Group&rsquo;s strategic design, implementation and on-going evaluation of patient assistance programs ensure you are consistently and compassionately providing the most effective product access for your patients.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (68, 44, N'<p>In today&rsquo;s evolving health coverage environment, you need a patient assistance partner with the expertise and service quality to properly identify and support the changing needs of uninsured and underinsured patients. Lash Group&rsquo;s strategic design, implementation and on-going evaluation of patient assistance programs ensure you are consistently and compassionately providing the most effective product access for your patients.</p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (69, 45, N'<p class="MsoNormal"><span style="color: #262626;">In today&rsquo;s evolving health coverage environment, you need a patient assistance partner with the expertise and service quality to properly identify uninsured and underinsured patients and help educate them on their drug access options.</span><span style="color: #262626;"> Lash Group provides on-going guidance and proven leadership for progressing your patient assistance programs to meet changing market needs.</span><span style="color: #262626;"></span></p>
<p class="MsoNormal"><span style="color: #262626;">&nbsp;</span></p>
<p class="MsoNormal"><span style="color: #262626;">With over two decades of experience across a range of therapeutic areas, Lash Group strategically designs and implements patient assistance programs that direct aid to the most appropriate patients. We offer a range of PAP models, distribution methods and customizable processes to best support your product and patient needs. And available integration with our reimbursement and copay programs further ensures that assistance funds are used effectively and efficiently. </span></p>
<p class="MsoNormal"><span style="color: #262626;">&nbsp;</span></p>
<p class="MsoNormal"><span style="color: #262626;">Lash Group&rsquo;s exceptional level of service provides accurate and timely processing with a caring, respectful approach. Our associates have </span><span style="color: #262626;">advanced credentials and program-specific training to ensure quality in handling patient and provider needs, and our unmatched retention rates maximize the consistency of your program delivery.</span></p>
<p class="MsoNormal"><span style="color: #262626;">&nbsp;</span></p>
<p class="MsoNormal"><span style="color: #262626;">Our innovative technology makes your program easy for providers to use &ndash; from our online data portal for enrollment and tracking to our Lash Group Complete card for seamless payment processing. Plus you can monitor and optimize your program through our manufacturer reporting portal and data analytics.&nbsp; </span></p>
<p class="MsoNormal"><span style="color: #262626;">&nbsp;</span></p>
<p class="MsoNormal"><span style="color: #262626;">Lash Group&rsquo;s strategic program design, service quality and technology </span><span style="color: #262626;">ensure </span><span style="color: #262626;">you are consistently and compassionately providing the most effective product access for your patients.</span><span style="color: #262626;"> And our consultative approach and industry expertise provide the value-added insight needed to keep your patient assistance programs aligned with your business goals and the evolving needs of the healthcare market.</span></p>', NULL)
INSERT [dbo].[Common_BodyPartRecord] ([Id], [ContentItemRecord_id], [Text], [Format]) VALUES (70, 46, N'<p class="MsoNormal"><span style="color: #262626;">In today&rsquo;s evolving health coverage environment, you need a patient assistance partner with the expertise and service quality to properly identify and support the changing needs of uninsured and underinsured patients. Lash Group&rsquo;s strategic design, implementation and on-going evaluation of patient assistance programs ensure you are consistently and compassionately providing the most effective product access for your patients.</span></p>
<p class="MsoNormal"><span style="color: #262626;">&nbsp;</span></p>
<p class="MsoNormal"><span style="color: #262626;">Upcoming healthcare reform will have a significant impact on the design of patient assistance programs and services required. As the insured patient population increases, it will become more challenging to properly identify those patients who need assistance and help educate them on their options for accessing prescribed medications. With our deep knowledge of industry best practices and proven thought leadership, Lash Group provides on-going strategic guidance and consultation for evolving your patient assistance programs to address changing market needs.</span></p>
<p class="MsoNormal"><b><span style="color: #262626;">&nbsp;</span></b></p>
<p class="MsoNormal"><b><span style="color: #262626;">Strategic Program Design for Appropriate Access</span></b></p>
<p class="MsoNormal"><span style="color: #262626;">With over two decades of recognized expertise in patient and provider support services, Lash Group strategically designs and implements patient assistance programs that address the unique needs of your products and patients. Using our knowledge of diverse therapeutic areas, patient populations and compliance regulations, we guide you in developing program criteria and eligibility requirements that direct assistance to the appropriate patients. Our ability to integrate patient assistance with reimbursement and copay programs, and our understanding of existing and emerging sources of coverage, further ensure that your programs meet patients&rsquo; needs in the most effective and efficient manner. </span></p>
<p class="MsoNormal"><span style="color: #262626;">&nbsp;</span></p>
<p class="MsoNormal"><b><span style="color: #262626;">Service Quality for Maximum Customer Satisfaction</span></b></p>
<p class="MsoNormal"><span style="color: #262626;">Lash Group&rsquo;s exceptional level of service goes beyond accurate and timely application processing and product fulfillment by providing a caring, personal approach to patient support. With </span><span style="color: #262626;">advanced credentials, extensive program-specific training and high-level continuing education, our associates are knowledgeable and professional in handling patient and provider needs. And our unmatched employee retention rates ensure on-going quality and consistency in the delivery of your program.</span><span style="color: #262626;"></span></p>
<p class="MsoNormal"><span style="color: #262626;">&nbsp;</span></p>
<p class="MsoNormal"><b><span style="color: #262626;">Innovative Systems and Technology for Ease of Use and Optimization</span></b></p>
<p class="MsoNormal"><span style="color: #262626;">Lash Group has experience across a broad range of patient assistance models and distribution methods, including a PAP-specific pharmacy. We offer the flexibility of customizing processes for varying products within a portfolio to provide efficient access for both providers and patients. Our online data portal helps physicians and pharmacies easily enroll and track patients, and our Lash Group Complete card utilizes technology that seamlessly integrates with standard payment processes and e-prescribing systems. Program analytics and real-time monitoring through our manufacturer reporting portal provide actionable data to optimize your program results.&nbsp; </span></p>
<p class="MsoNormal"><span style="color: #262626;">&nbsp;</span></p>
<p class="MsoNormal"><b><span style="color: #262626;">Programs for Effective and Compassionate Patient Assistance </span></b></p>
<p class="MsoNormal"><span style="color: #262626;">Lash Group&rsquo;s patient assistance programs</span><span style="color: #262626;"> make it easier to expand product access and </span><span style="color: #262626;">increase patient adherence among the uninsured and underinsured populations</span><span style="color: #262626;">. </span><span style="color: #262626;">Our strategic program design, service quality and innovative technology </span><span style="color: #262626;">ensure that your assistance funds are used effectively and that patients are handled with care and respect. And Lash Group&rsquo;s consultative approach and industry expertise provide the value-added insight needed to keep your patient assistance programs continuously aligned with your business goals and the evolving needs of the healthcare market.&nbsp;</span></p>', NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (3, 2, CAST(0x0000A1080126D878 AS DateTime), CAST(0x0000A1080126D878 AS DateTime), CAST(0x0000A1080126D878 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (4, 2, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (5, 2, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (6, 2, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (7, 2, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (8, 2, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), 7)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (9, 2, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), 7)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (10, 2, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), 7)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (11, 0, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (12, 2, CAST(0x0000A1080126B550 AS DateTime), CAST(0x0000A1080129ACB0 AS DateTime), CAST(0x0000A1080129AB84 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (13, 2, CAST(0x0000A1080126DAD0 AS DateTime), CAST(0x0000A10801294338 AS DateTime), CAST(0x0000A1080129420C AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (14, 2, CAST(0x0000A1080126DAD0 AS DateTime), CAST(0x0000A1080126DAD0 AS DateTime), CAST(0x0000A1080126DAD0 AS DateTime), 3)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (15, 2, CAST(0x0000A108012B955C AS DateTime), CAST(0x0000A108012B9688 AS DateTime), CAST(0x0000A108012B9688 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (16, 2, CAST(0x0000A108012BA6F0 AS DateTime), CAST(0x0000A10A008B4520 AS DateTime), CAST(0x0000A10A008B20CC AS DateTime), 15)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (17, 2, CAST(0x0000A108012C1644 AS DateTime), CAST(0x0000A108014B2570 AS DateTime), CAST(0x0000A108014B2570 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (18, 2, CAST(0x0000A108012C79E0 AS DateTime), CAST(0x0000A10A008B3CEC AS DateTime), CAST(0x0000A10A008B12BC AS DateTime), 17)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (19, 2, CAST(0x0000A10801522E9C AS DateTime), CAST(0x0000A10801522FC8 AS DateTime), CAST(0x0000A10801522E9C AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (20, 2, CAST(0x0000A10801526100 AS DateTime), CAST(0x0000A10A008B2B58 AS DateTime), CAST(0x0000A10A008ADBA8 AS DateTime), 19)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (21, 2, CAST(0x0000A10801540230 AS DateTime), CAST(0x0000A10A008B26A8 AS DateTime), CAST(0x0000A10A0091017C AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (22, 2, CAST(0x0000A108015406E0 AS DateTime), CAST(0x0000A10A006CCBF4 AS DateTime), CAST(0x0000A10A006CBCB8 AS DateTime), 21)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (23, 2, CAST(0x0000A10801549380 AS DateTime), CAST(0x0000A10A0093CB28 AS DateTime), CAST(0x0000A10A0093CB28 AS DateTime), 21)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (25, 2, CAST(0x0000A108016FC470 AS DateTime), CAST(0x0000A109007D8BD8 AS DateTime), CAST(0x0000A109007D8BD8 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (27, 26, CAST(0x0000A10A006AD790 AS DateTime), CAST(0x0000A10A006AE348 AS DateTime), CAST(0x0000A10A006AE348 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (28, 26, CAST(0x0000A10A006B079C AS DateTime), CAST(0x0000A10A006B079C AS DateTime), CAST(0x0000A10A006B079C AS DateTime), 27)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (29, 26, CAST(0x0000A10A006B2164 AS DateTime), CAST(0x0000A10A006B2164 AS DateTime), CAST(0x0000A10A006B2164 AS DateTime), 27)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (30, 26, CAST(0x0000A10A006B2AC4 AS DateTime), CAST(0x0000A10A006B2AC4 AS DateTime), CAST(0x0000A10A006B2AC4 AS DateTime), 27)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (31, 26, CAST(0x0000A10A006B3A00 AS DateTime), CAST(0x0000A10A006B3A00 AS DateTime), CAST(0x0000A10A006B3A00 AS DateTime), 27)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (32, 26, CAST(0x0000A10A006B6D90 AS DateTime), CAST(0x0000A10A006B6D90 AS DateTime), CAST(0x0000A10A006B6D90 AS DateTime), 27)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (33, 26, CAST(0x0000A10A006B7DF8 AS DateTime), CAST(0x0000A10A006B7DF8 AS DateTime), CAST(0x0000A10A006B7DF8 AS DateTime), 27)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (34, 26, CAST(0x0000A10A006B9568 AS DateTime), CAST(0x0000A10A006B9568 AS DateTime), CAST(0x0000A10A006B9568 AS DateTime), 27)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (35, 26, CAST(0x0000A10A006B9FF4 AS DateTime), CAST(0x0000A10A006B9FF4 AS DateTime), CAST(0x0000A10A006B9FF4 AS DateTime), 27)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (36, 26, CAST(0x0000A10A006BB638 AS DateTime), CAST(0x0000A10A006BB638 AS DateTime), CAST(0x0000A10A006BB638 AS DateTime), 27)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (37, 26, CAST(0x0000A10A006BC1F0 AS DateTime), CAST(0x0000A10A006BC1F0 AS DateTime), CAST(0x0000A10A006BC1F0 AS DateTime), 27)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (38, 26, CAST(0x0000A10C00317040 AS DateTime), CAST(0x0000A10A009A9AE8 AS DateTime), CAST(0x0000A10A009A9AE8 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (39, 2, CAST(0x0000A109008EF0F8 AS DateTime), CAST(0x0000A109008EF224 AS DateTime), CAST(0x0000A109008EF0F8 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (40, 2, CAST(0x0000A109008F280C AS DateTime), CAST(0x0000A109008F280C AS DateTime), CAST(0x0000A109008F280C AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (41, 2, CAST(0x0000A109008F280C AS DateTime), CAST(0x0000A109008F280C AS DateTime), CAST(0x0000A109008F280C AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (42, 2, CAST(0x0000A10900A81E48 AS DateTime), CAST(0x0000A10900A81E48 AS DateTime), CAST(0x0000A10900A81E48 AS DateTime), NULL)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (43, 2, CAST(0x0000A10900A87050 AS DateTime), CAST(0x0000A10900A87050 AS DateTime), CAST(0x0000A10900A87050 AS DateTime), 42)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (44, 2, CAST(0x0000A10900A8EA30 AS DateTime), CAST(0x0000A10900A8F138 AS DateTime), CAST(0x0000A10900A8F714 AS DateTime), 42)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (45, 2, CAST(0x0000A10900A925F4 AS DateTime), CAST(0x0000A10900A925F4 AS DateTime), CAST(0x0000A10900A924C8 AS DateTime), 42)
INSERT [dbo].[Common_CommonPartRecord] ([Id], [OwnerId], [CreatedUtc], [PublishedUtc], [ModifiedUtc], [Container_id]) VALUES (46, 2, CAST(0x0000A10900A95BDC AS DateTime), CAST(0x0000A10900A95BDC AS DateTime), CAST(0x0000A10900A95BDC AS DateTime), 42)
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (3, 3, CAST(0x0000A1080126D878 AS DateTime), CAST(0x0000A1080126D878 AS DateTime), CAST(0x0000A1080126D878 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (4, 4, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (5, 5, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (6, 6, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (7, 7, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (8, 8, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (9, 9, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (10, 10, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (11, 11, CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime), CAST(0x0000A1080126D9A4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (12, 12, CAST(0x0000A1080126DAD0 AS DateTime), CAST(0x0000A1080126DAD0 AS DateTime), CAST(0x0000A1080126DAD0 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (13, 13, CAST(0x0000A1080126DAD0 AS DateTime), CAST(0x0000A1080126DAD0 AS DateTime), CAST(0x0000A1080126DAD0 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (14, 14, CAST(0x0000A1080126DAD0 AS DateTime), CAST(0x0000A1080126DAD0 AS DateTime), CAST(0x0000A1080126DAD0 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (15, 13, CAST(0x0000A108012940E0 AS DateTime), CAST(0x0000A10801294338 AS DateTime), CAST(0x0000A1080129420C AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (16, 12, CAST(0x0000A1080129AA58 AS DateTime), CAST(0x0000A1080129ACB0 AS DateTime), CAST(0x0000A1080129AB84 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (17, 15, CAST(0x0000A108012B955C AS DateTime), CAST(0x0000A108012B9688 AS DateTime), CAST(0x0000A108012B9688 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (18, 16, CAST(0x0000A108012BD24C AS DateTime), CAST(0x0000A108012BD24C AS DateTime), CAST(0x0000A108012BD24C AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (19, 17, CAST(0x0000A108012C1644 AS DateTime), CAST(0x0000A108012C1644 AS DateTime), CAST(0x0000A108012C1644 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (20, 18, CAST(0x0000A108012CA9EC AS DateTime), CAST(0x0000A108012CA9EC AS DateTime), CAST(0x0000A108012CA9EC AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (21, 17, CAST(0x0000A108014AC42C AS DateTime), CAST(0x0000A108014AC42C AS DateTime), CAST(0x0000A108014AC42C AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (22, 17, CAST(0x0000A108014B2570 AS DateTime), CAST(0x0000A108014B2570 AS DateTime), CAST(0x0000A108014B2570 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (23, 19, CAST(0x0000A10801522E9C AS DateTime), CAST(0x0000A10801522FC8 AS DateTime), CAST(0x0000A10801522E9C AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (24, 20, CAST(0x0000A10801525FD4 AS DateTime), CAST(0x0000A1080152622C AS DateTime), CAST(0x0000A1080152622C AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (25, 21, CAST(0x0000A10801540230 AS DateTime), CAST(0x0000A1080154035C AS DateTime), CAST(0x0000A10801540230 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (26, 22, CAST(0x0000A10801543368 AS DateTime), CAST(0x0000A10801543368 AS DateTime), CAST(0x0000A10801543368 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (27, 23, CAST(0x0000A10801549BB4 AS DateTime), CAST(0x0000A10801549BB4 AS DateTime), CAST(0x0000A10801549BB4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (29, 25, CAST(0x0000A108016FD280 AS DateTime), CAST(0x0000A108016FD4D8 AS DateTime), CAST(0x0000A108016FD3AC AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (30, 25, CAST(0x0000A1090070A6AC AS DateTime), CAST(0x0000A1090070A7D8 AS DateTime), CAST(0x0000A1090070A7D8 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (31, 25, CAST(0x0000A10900720C18 AS DateTime), CAST(0x0000A10900720C18 AS DateTime), CAST(0x0000A10900720C18 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (32, 25, CAST(0x0000A10900737184 AS DateTime), CAST(0x0000A109007372B0 AS DateTime), CAST(0x0000A10900737184 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (33, 25, CAST(0x0000A109007D8BD8 AS DateTime), CAST(0x0000A109007D8BD8 AS DateTime), CAST(0x0000A109007D8BD8 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (35, 27, CAST(0x0000A10A006AD790 AS DateTime), CAST(0x0000A10A006AD790 AS DateTime), CAST(0x0000A10A006AD790 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (36, 27, CAST(0x0000A10A006AE348 AS DateTime), CAST(0x0000A10A006AE348 AS DateTime), CAST(0x0000A10A006AE348 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (37, 28, CAST(0x0000A10A006B079C AS DateTime), CAST(0x0000A10A006B079C AS DateTime), CAST(0x0000A10A006B079C AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (38, 29, CAST(0x0000A10A006B2164 AS DateTime), CAST(0x0000A10A006B2164 AS DateTime), CAST(0x0000A10A006B2164 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (39, 30, CAST(0x0000A10A006B2AC4 AS DateTime), CAST(0x0000A10A006B2AC4 AS DateTime), CAST(0x0000A10A006B2AC4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (40, 31, CAST(0x0000A10A006B3A00 AS DateTime), CAST(0x0000A10A006B3A00 AS DateTime), CAST(0x0000A10A006B3A00 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (41, 32, CAST(0x0000A10A006B6D90 AS DateTime), CAST(0x0000A10A006B6D90 AS DateTime), CAST(0x0000A10A006B6D90 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (42, 33, CAST(0x0000A10A006B7DF8 AS DateTime), CAST(0x0000A10A006B7DF8 AS DateTime), CAST(0x0000A10A006B7DF8 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (43, 34, CAST(0x0000A10A006B9568 AS DateTime), CAST(0x0000A10A006B9568 AS DateTime), CAST(0x0000A10A006B9568 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (44, 35, CAST(0x0000A10A006B9FF4 AS DateTime), CAST(0x0000A10A006B9FF4 AS DateTime), CAST(0x0000A10A006B9FF4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (45, 36, CAST(0x0000A10A006BB638 AS DateTime), CAST(0x0000A10A006BB638 AS DateTime), CAST(0x0000A10A006BB638 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (46, 37, CAST(0x0000A10A006BC1F0 AS DateTime), CAST(0x0000A10A006BC1F0 AS DateTime), CAST(0x0000A10A006BC1F0 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (47, 21, CAST(0x0000A10A006C2EEC AS DateTime), CAST(0x0000A10A006C9738 AS DateTime), CAST(0x0000A10A006C2EEC AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (48, 23, CAST(0x0000A10A006C57F0 AS DateTime), CAST(0x0000A10A006C9BE8 AS DateTime), CAST(0x0000A10A006C57F0 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (49, 21, CAST(0x0000A10A006CAEA8 AS DateTime), CAST(0x0000A10A006CD1D0 AS DateTime), CAST(0x0000A10A006CAEA8 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (50, 22, CAST(0x0000A10A006CBCB8 AS DateTime), CAST(0x0000A10A006CCBF4 AS DateTime), CAST(0x0000A10A006CBCB8 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (51, 21, CAST(0x0000A10A008A9C60 AS DateTime), CAST(0x0000A10A008B26A8 AS DateTime), CAST(0x0000A10A008A9C60 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (52, 23, CAST(0x0000A10A008AA23C AS DateTime), CAST(0x0000A10A008B3260 AS DateTime), CAST(0x0000A10A008AA23C AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (53, 20, CAST(0x0000A10A008ADBA8 AS DateTime), CAST(0x0000A10A008B2B58 AS DateTime), CAST(0x0000A10A008ADBA8 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (54, 18, CAST(0x0000A10A008B12BC AS DateTime), CAST(0x0000A10A008B3CEC AS DateTime), CAST(0x0000A10A008B12BC AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (55, 16, CAST(0x0000A10A008B20CC AS DateTime), CAST(0x0000A10A008B4520 AS DateTime), CAST(0x0000A10A008B20CC AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (56, 23, CAST(0x0000A10A008DD8E4 AS DateTime), CAST(0x0000A10A008DE244 AS DateTime), CAST(0x0000A10A008DD8E4 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (57, 21, CAST(0x0000A10A0091017C AS DateTime), NULL, CAST(0x0000A10A0091017C AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (58, 23, CAST(0x0000A10A0093CB28 AS DateTime), NULL, CAST(0x0000A10A0093CB28 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (59, 23, CAST(0x0000A10A0093CB28 AS DateTime), CAST(0x0000A10A0093CB28 AS DateTime), CAST(0x0000A10A0093CB28 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (61, 38, CAST(0x0000A10A009A99BC AS DateTime), CAST(0x0000A10A009A9AE8 AS DateTime), CAST(0x0000A10A009A9AE8 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (62, 39, CAST(0x0000A109008EF0F8 AS DateTime), CAST(0x0000A109008EF224 AS DateTime), CAST(0x0000A109008EF0F8 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (63, 40, CAST(0x0000A109008F280C AS DateTime), CAST(0x0000A109008F280C AS DateTime), CAST(0x0000A109008F280C AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (64, 41, CAST(0x0000A109008F280C AS DateTime), CAST(0x0000A109008F280C AS DateTime), CAST(0x0000A109008F280C AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (65, 42, CAST(0x0000A10900A81E48 AS DateTime), CAST(0x0000A10900A81E48 AS DateTime), CAST(0x0000A10900A81E48 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (66, 43, CAST(0x0000A10900A87050 AS DateTime), CAST(0x0000A10900A87050 AS DateTime), CAST(0x0000A10900A87050 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (67, 44, CAST(0x0000A10900A8F138 AS DateTime), CAST(0x0000A10900A8F138 AS DateTime), CAST(0x0000A10900A8F138 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (68, 44, CAST(0x0000A10900A8F714 AS DateTime), NULL, CAST(0x0000A10900A8F714 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (69, 45, CAST(0x0000A10900A924C8 AS DateTime), CAST(0x0000A10900A925F4 AS DateTime), CAST(0x0000A10900A924C8 AS DateTime))
INSERT [dbo].[Common_CommonPartVersionRecord] ([Id], [ContentItemRecord_id], [CreatedUtc], [PublishedUtc], [ModifiedUtc]) VALUES (70, 46, CAST(0x0000A10900A95BDC AS DateTime), CAST(0x0000A10900A95BDC AS DateTime), CAST(0x0000A10900A95BDC AS DateTime))
INSERT [dbo].[Common_IdentityPartRecord] ([Id], [Identifier]) VALUES (8, N'SetupHtmlWidget1')
INSERT [dbo].[Common_IdentityPartRecord] ([Id], [Identifier]) VALUES (9, N'SetupHtmlWidget2')
INSERT [dbo].[Common_IdentityPartRecord] ([Id], [Identifier]) VALUES (10, N'SetupHtmlWidget3')
INSERT [dbo].[Common_IdentityPartRecord] ([Id], [Identifier]) VALUES (13, N'60aaec19b33f43afb25fa9d6cda70825')
INSERT [dbo].[Common_IdentityPartRecord] ([Id], [Identifier]) VALUES (14, N'MenuWidget1')
INSERT [dbo].[Common_IdentityPartRecord] ([Id], [Identifier]) VALUES (39, N'02f4ba256a26400fbb7a01833410c309')
INSERT [dbo].[Common_IdentityPartRecord] ([Id], [Identifier]) VALUES (41, N'84ce23aa93fc4c1abe849c18c5d23d59')
INSERT [dbo].[Contrib_Taxonomies_TaxonomyPartRecord] ([Id], [TermTypeName]) VALUES (27, N'DocumentType')
SET IDENTITY_INSERT [dbo].[Contrib_Taxonomies_TermContentItem] ON 

INSERT [dbo].[Contrib_Taxonomies_TermContentItem] ([Id], [Field], [TermRecord_id], [TermsPartRecord_id]) VALUES (2, N'DocumentType', 37, 22)
INSERT [dbo].[Contrib_Taxonomies_TermContentItem] ([Id], [Field], [TermRecord_id], [TermsPartRecord_id]) VALUES (4, N'DocumentType', 37, 20)
INSERT [dbo].[Contrib_Taxonomies_TermContentItem] ([Id], [Field], [TermRecord_id], [TermsPartRecord_id]) VALUES (5, N'DocumentType', 37, 18)
INSERT [dbo].[Contrib_Taxonomies_TermContentItem] ([Id], [Field], [TermRecord_id], [TermsPartRecord_id]) VALUES (6, N'DocumentType', 37, 16)
INSERT [dbo].[Contrib_Taxonomies_TermContentItem] ([Id], [Field], [TermRecord_id], [TermsPartRecord_id]) VALUES (8, N'DocumentType', 31, 23)
INSERT [dbo].[Contrib_Taxonomies_TermContentItem] ([Id], [Field], [TermRecord_id], [TermsPartRecord_id]) VALUES (9, N'DocumentType', 29, 38)
INSERT [dbo].[Contrib_Taxonomies_TermContentItem] ([Id], [Field], [TermRecord_id], [TermsPartRecord_id]) VALUES (10, N'DocumentType', 31, 43)
INSERT [dbo].[Contrib_Taxonomies_TermContentItem] ([Id], [Field], [TermRecord_id], [TermsPartRecord_id]) VALUES (12, N'DocumentType', 28, 44)
INSERT [dbo].[Contrib_Taxonomies_TermContentItem] ([Id], [Field], [TermRecord_id], [TermsPartRecord_id]) VALUES (13, N'DocumentType', 28, 45)
INSERT [dbo].[Contrib_Taxonomies_TermContentItem] ([Id], [Field], [TermRecord_id], [TermsPartRecord_id]) VALUES (14, N'DocumentType', 28, 46)
SET IDENTITY_INSERT [dbo].[Contrib_Taxonomies_TermContentItem] OFF
INSERT [dbo].[Contrib_Taxonomies_TermPartRecord] ([Id], [Path], [TaxonomyId], [Count], [Weight], [Selectable]) VALUES (28, N'/', 27, 3, 0, 1)
INSERT [dbo].[Contrib_Taxonomies_TermPartRecord] ([Id], [Path], [TaxonomyId], [Count], [Weight], [Selectable]) VALUES (29, N'/', 27, 1, 0, 1)
INSERT [dbo].[Contrib_Taxonomies_TermPartRecord] ([Id], [Path], [TaxonomyId], [Count], [Weight], [Selectable]) VALUES (30, N'/', 27, 0, 0, 1)
INSERT [dbo].[Contrib_Taxonomies_TermPartRecord] ([Id], [Path], [TaxonomyId], [Count], [Weight], [Selectable]) VALUES (31, N'/', 27, 2, 0, 1)
INSERT [dbo].[Contrib_Taxonomies_TermPartRecord] ([Id], [Path], [TaxonomyId], [Count], [Weight], [Selectable]) VALUES (32, N'/', 27, 0, 0, 1)
INSERT [dbo].[Contrib_Taxonomies_TermPartRecord] ([Id], [Path], [TaxonomyId], [Count], [Weight], [Selectable]) VALUES (33, N'/', 27, 0, 0, 1)
INSERT [dbo].[Contrib_Taxonomies_TermPartRecord] ([Id], [Path], [TaxonomyId], [Count], [Weight], [Selectable]) VALUES (34, N'/', 27, 0, 0, 1)
INSERT [dbo].[Contrib_Taxonomies_TermPartRecord] ([Id], [Path], [TaxonomyId], [Count], [Weight], [Selectable]) VALUES (35, N'/', 27, 0, 0, 1)
INSERT [dbo].[Contrib_Taxonomies_TermPartRecord] ([Id], [Path], [TaxonomyId], [Count], [Weight], [Selectable]) VALUES (36, N'/', 27, 0, 0, 1)
INSERT [dbo].[Contrib_Taxonomies_TermPartRecord] ([Id], [Path], [TaxonomyId], [Count], [Weight], [Selectable]) VALUES (37, N'/', 27, 4, 0, 1)
INSERT [dbo].[Contrib_Taxonomies_TermsPartRecord] ([Id]) VALUES (16)
INSERT [dbo].[Contrib_Taxonomies_TermsPartRecord] ([Id]) VALUES (18)
INSERT [dbo].[Contrib_Taxonomies_TermsPartRecord] ([Id]) VALUES (20)
INSERT [dbo].[Contrib_Taxonomies_TermsPartRecord] ([Id]) VALUES (22)
INSERT [dbo].[Contrib_Taxonomies_TermsPartRecord] ([Id]) VALUES (23)
INSERT [dbo].[Contrib_Taxonomies_TermsPartRecord] ([Id]) VALUES (38)
INSERT [dbo].[Contrib_Taxonomies_TermsPartRecord] ([Id]) VALUES (43)
INSERT [dbo].[Contrib_Taxonomies_TermsPartRecord] ([Id]) VALUES (44)
INSERT [dbo].[Contrib_Taxonomies_TermsPartRecord] ([Id]) VALUES (45)
INSERT [dbo].[Contrib_Taxonomies_TermsPartRecord] ([Id]) VALUES (46)
INSERT [dbo].[Infusion_Documents_DocumentContentPartRecord] ([Id], [SourceDocumentId]) VALUES (16, 0)
INSERT [dbo].[Infusion_Documents_DocumentContentPartRecord] ([Id], [SourceDocumentId]) VALUES (18, 0)
INSERT [dbo].[Infusion_Documents_DocumentContentPartRecord] ([Id], [SourceDocumentId]) VALUES (20, 0)
INSERT [dbo].[Infusion_Documents_DocumentContentPartRecord] ([Id], [SourceDocumentId]) VALUES (22, 0)
INSERT [dbo].[Infusion_Documents_DocumentContentPartRecord] ([Id], [SourceDocumentId]) VALUES (23, 0)
INSERT [dbo].[Infusion_Documents_DocumentContentPartRecord] ([Id], [SourceDocumentId]) VALUES (38, 0)
INSERT [dbo].[Infusion_Documents_DocumentContentPartRecord] ([Id], [SourceDocumentId]) VALUES (43, 0)
INSERT [dbo].[Infusion_Documents_DocumentContentPartRecord] ([Id], [SourceDocumentId]) VALUES (44, 0)
INSERT [dbo].[Infusion_Documents_DocumentContentPartRecord] ([Id], [SourceDocumentId]) VALUES (45, 0)
INSERT [dbo].[Infusion_Documents_DocumentContentPartRecord] ([Id], [SourceDocumentId]) VALUES (46, 0)
INSERT [dbo].[Infusion_Documents_DocumentPartRecord] ([Id], [Description]) VALUES (15, NULL)
INSERT [dbo].[Infusion_Documents_DocumentPartRecord] ([Id], [Description]) VALUES (17, NULL)
INSERT [dbo].[Infusion_Documents_DocumentPartRecord] ([Id], [Description]) VALUES (19, NULL)
INSERT [dbo].[Infusion_Documents_DocumentPartRecord] ([Id], [Description]) VALUES (21, NULL)
INSERT [dbo].[Infusion_Documents_DocumentPartRecord] ([Id], [Description]) VALUES (42, NULL)
INSERT [dbo].[Navigation_AdminMenuPartRecord] ([Id], [AdminMenuText], [AdminMenuPosition], [OnAdminMenu]) VALUES (15, NULL, N'2', 0)
INSERT [dbo].[Navigation_AdminMenuPartRecord] ([Id], [AdminMenuText], [AdminMenuPosition], [OnAdminMenu]) VALUES (17, NULL, N'2', 0)
INSERT [dbo].[Navigation_AdminMenuPartRecord] ([Id], [AdminMenuText], [AdminMenuPosition], [OnAdminMenu]) VALUES (19, NULL, N'2', 0)
INSERT [dbo].[Navigation_AdminMenuPartRecord] ([Id], [AdminMenuText], [AdminMenuPosition], [OnAdminMenu]) VALUES (21, NULL, N'2', 0)
INSERT [dbo].[Navigation_AdminMenuPartRecord] ([Id], [AdminMenuText], [AdminMenuPosition], [OnAdminMenu]) VALUES (42, NULL, N'2', 0)
INSERT [dbo].[Navigation_ContentMenuItemPartRecord] ([Id], [ContentMenuItemRecord_id]) VALUES (13, 12)
INSERT [dbo].[Navigation_ContentMenuItemPartRecord] ([Id], [ContentMenuItemRecord_id]) VALUES (39, 12)
INSERT [dbo].[Navigation_ContentMenuItemPartRecord] ([Id], [ContentMenuItemRecord_id]) VALUES (41, 40)
INSERT [dbo].[Navigation_MenuPartRecord] ([Id], [MenuText], [MenuPosition], [MenuId]) VALUES (13, N'Infusion', N'1', 11)
INSERT [dbo].[Navigation_MenuPartRecord] ([Id], [MenuText], [MenuPosition], [MenuId]) VALUES (15, N'PAP 50-WORD', N'2', 0)
INSERT [dbo].[Navigation_MenuPartRecord] ([Id], [MenuText], [MenuPosition], [MenuId]) VALUES (17, N'250 Word', N'3', 0)
INSERT [dbo].[Navigation_MenuPartRecord] ([Id], [MenuText], [MenuPosition], [MenuId]) VALUES (19, N'CoPay 50', N'4', 0)
INSERT [dbo].[Navigation_MenuPartRecord] ([Id], [MenuText], [MenuPosition], [MenuId]) VALUES (21, N'CoPay 500', N'5', 0)
INSERT [dbo].[Navigation_MenuPartRecord] ([Id], [MenuText], [MenuPosition], [MenuId]) VALUES (39, N'Welcome to Infusion!', N'1', 11)
INSERT [dbo].[Navigation_MenuPartRecord] ([Id], [MenuText], [MenuPosition], [MenuId]) VALUES (41, N'Test', N'2', 11)
INSERT [dbo].[Navigation_MenuPartRecord] ([Id], [MenuText], [MenuPosition], [MenuId]) VALUES (42, NULL, NULL, 0)
INSERT [dbo].[Navigation_MenuWidgetPartRecord] ([Id], [StartLevel], [Levels], [Breadcrumb], [AddHomePage], [AddCurrentPage], [Menu_id]) VALUES (14, 1, 0, 0, 0, 0, 11)
SET IDENTITY_INSERT [dbo].[Orchard_Alias_ActionRecord] ON 

INSERT [dbo].[Orchard_Alias_ActionRecord] ([Id], [Area], [Controller], [Action]) VALUES (1, N'Contents', N'Item', N'Display')
INSERT [dbo].[Orchard_Alias_ActionRecord] ([Id], [Area], [Controller], [Action]) VALUES (2, N'Infusion.Documents', N'Document', N'Item')
SET IDENTITY_INSERT [dbo].[Orchard_Alias_ActionRecord] OFF
SET IDENTITY_INSERT [dbo].[Orchard_Alias_AliasRecord] ON 

INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (3, N'', 1, N'<v Id="12" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (4, N'pap-50-word-messaging', 2, N'<v documentId="15" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (5, N'pap-50-word-messaging/pap-50-word-messaging', 1, N'<v Id="16" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (7, N'pap-250-word-messaging/pap-250-word-messaging', 1, N'<v Id="18" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (8, N'pap-250', 2, N'<v documentId="17" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (9, N'copay-50', 2, N'<v documentId="19" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (10, N'copay-50/overview', 1, N'<v Id="20" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (11, N'copay-500', 2, N'<v documentId="21" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (12, N'copay-500/overview', 1, N'<v Id="22" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (14, N'search-page', 1, N'<v Id="25" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (16, N'documenttype', 1, N'<v Id="27" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (17, N'documenttype/elevatorpitch', 1, N'<v Id="28" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (18, N'documenttype/painpoints', 1, N'<v Id="29" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (19, N'documenttype/faq', 1, N'<v Id="30" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (20, N'documenttype/benefits', 1, N'<v Id="31" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (21, N'documenttype/rss', 1, N'<v Id="32" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (22, N'documenttype/comments', 1, N'<v Id="33" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (23, N'documenttype/rating', 1, N'<v Id="34" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (24, N'documenttype/presentation', 1, N'<v Id="35" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (25, N'documenttype/whitepaper', 1, N'<v Id="36" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (26, N'documenttype/casestudy', 1, N'<v Id="37" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (27, N'copay-500/copay-products-built-with-lash-groups-expertise', 1, N'<v Id="23" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (28, N'my-resume', 1, N'<v Id="38" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (29, N'test', 1, N'<v Id="40" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (30, N'lash-group-pap-messaging', 2, N'<v documentId="42" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (31, N'lash-group-pap-messaging/pap-mandatory-messages', 1, N'<v Id="43" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (32, N'lash-group-pap-messaging/pap-50-word-messaging', 1, N'<v Id="44" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (33, N'lash-group-pap-messaging/pap-250-word-messaging', 1, N'<v Id="45" />', N'Autoroute:View')
INSERT [dbo].[Orchard_Alias_AliasRecord] ([Id], [Path], [Action_id], [RouteValues], [Source]) VALUES (34, N'lash-group-pap-messaging/pap-500-word-messaging', 1, N'<v Id="46" />', N'Autoroute:View')
SET IDENTITY_INSERT [dbo].[Orchard_Alias_AliasRecord] OFF
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (12, 12, N'', 1, N'welcome-to-orchard')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (16, 12, N'/', 1, N'')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (17, 15, NULL, 0, N'pap-50-word-messaging')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (18, 16, NULL, 0, N'pap-50-word-messaging/pap-50-word-messaging')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (19, 17, NULL, 0, N'pap-250-word-messaging')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (20, 18, NULL, 0, N'pap-250-word-messaging/pap-250-word-messaging')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (21, 17, NULL, 0, N'pap-250-word-messaging')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (22, 17, NULL, 0, N'pap-250')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (23, 19, NULL, 0, N'copay-50')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (24, 20, NULL, 0, N'copay-50/overview')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (25, 21, NULL, 0, N'copay-500')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (26, 22, NULL, 0, N'copay-500/overview')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (27, 23, NULL, 0, N'copay-500/copay-products-built-with-lash-group’s-expertise')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (29, 25, NULL, 0, N'search-page')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (30, 25, NULL, 0, N'search-page')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (31, 25, NULL, 0, N'search-page')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (32, 25, NULL, 0, N'search-page')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (33, 25, NULL, 0, N'search-page')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (35, 27, NULL, 0, N'document-type')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (36, 27, NULL, 0, N'documenttype')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (37, 28, NULL, 0, N'documenttype/elevatorpitch')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (38, 29, NULL, 0, N'documenttype/painpoints')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (39, 30, NULL, 0, N'documenttype/faq')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (40, 31, NULL, 0, N'documenttype/benefits')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (41, 32, NULL, 0, N'documenttype/rss')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (42, 33, NULL, 0, N'documenttype/comments')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (43, 34, NULL, 0, N'documenttype/rating')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (44, 35, NULL, 0, N'documenttype/presentation')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (45, 36, NULL, 0, N'documenttype/whitepaper')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (46, 37, NULL, 0, N'documenttype/casestudy')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (47, 21, NULL, 0, N'copay-500')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (48, 23, NULL, 0, N'copay-500/copay-products-built-with-lash-group’s-expertise')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (49, 21, NULL, 0, N'copay-500')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (50, 22, NULL, 0, N'copay-500/overview')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (51, 21, NULL, 0, N'copay-500')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (52, 23, NULL, 0, N'copay-500/copay-products-built-with-lash-group’s-expertise')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (53, 20, NULL, 0, N'copay-50/overview')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (54, 18, NULL, 0, N'pap-250-word-messaging/pap-250-word-messaging')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (55, 16, NULL, 0, N'pap-50-word-messaging/pap-50-word-messaging')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (56, 23, NULL, 0, N'copay-500/copay-products-built-with-lash-groups-expertise')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (57, 21, NULL, 0, N'copay-500')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (58, 23, NULL, 0, N'copay-500/copay-products-built-with-lash-groups-expertise')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (59, 23, NULL, 0, N'copay-500/copay-products-built-with-lash-groups-expertise')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (61, 38, NULL, 0, N'my-resume')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (63, 40, NULL, 0, N'test')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (65, 42, NULL, 0, N'lash-group-pap-messaging')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (66, 43, NULL, 0, N'lash-group-pap-messaging/pap-mandatory-messages')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (67, 44, NULL, 0, N'lash-group-pap-messaging/pap-50-word-messaging')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (68, 44, NULL, 0, N'lash-group-pap-messaging/pap-50-word-messaging')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (69, 45, NULL, 0, N'lash-group-pap-messaging/pap-250-word-messaging')
INSERT [dbo].[Orchard_Autoroute_AutoroutePartRecord] ([Id], [ContentItemRecord_id], [CustomPattern], [UseCustomPattern], [DisplayAlias]) VALUES (70, 46, NULL, 0, N'lash-group-pap-messaging/pap-500-word-messaging')
INSERT [dbo].[Orchard_Comments_CommentSettingsPartRecord] ([Id], [ModerateComments]) VALUES (1, 0)
INSERT [dbo].[Orchard_Email_SmtpSettingsPartRecord] ([Id], [Address], [Host], [Port], [EnableSsl], [RequireCredentials], [UserName], [Password]) VALUES (1, N'travis@cloudmetal.com', N'smtp.gmail.com', 25, 1, 1, N'gqadonis@gmail.com', N'Yth4o55l6wv8Vv4MpvrLzzd3xoiGpeFZF1lmo61NeMU9kSmasN5vci8qBnLSglAUkvhoOUN65XM5qHgQ0ER8Hg==')
SET IDENTITY_INSERT [dbo].[Orchard_Framework_ContentItemRecord] ON 

INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (1, NULL, 1)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (2, NULL, 2)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (3, NULL, 3)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (4, NULL, 3)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (5, NULL, 3)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (6, NULL, 3)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (7, NULL, 3)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (8, NULL, 4)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (9, NULL, 4)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (10, NULL, 4)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (11, N'<Data />', 5)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (12, NULL, 6)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (13, N'<Data />', 7)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (14, N'<Data />', 8)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (15, N'<Data />', 9)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (16, NULL, 10)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (17, N'<Data />', 9)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (18, NULL, 10)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (19, N'<Data />', 9)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (20, NULL, 10)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (21, N'<Data />', 9)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (22, NULL, 10)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (23, NULL, 10)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (24, NULL, 2)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (25, NULL, 6)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (26, N'<Data />', 2)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (27, NULL, 11)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (28, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (29, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (30, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (31, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (32, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (33, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (34, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (35, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (36, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (37, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (38, NULL, 10)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (39, NULL, 7)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (40, NULL, 6)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (41, NULL, 7)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (42, NULL, 9)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (43, NULL, 10)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (44, NULL, 10)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (45, NULL, 10)
INSERT [dbo].[Orchard_Framework_ContentItemRecord] ([Id], [Data], [ContentType_id]) VALUES (46, NULL, 10)
SET IDENTITY_INSERT [dbo].[Orchard_Framework_ContentItemRecord] OFF
SET IDENTITY_INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ON 

INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (1, 1, 1, 1, NULL, 1)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (2, 1, 1, 1, N'<Data />', 2)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (3, 1, 1, 1, NULL, 3)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (4, 1, 1, 1, NULL, 4)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (5, 1, 1, 1, NULL, 5)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (6, 1, 1, 1, NULL, 6)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (7, 1, 1, 1, NULL, 7)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (8, 1, 0, 0, NULL, 8)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (9, 1, 0, 0, NULL, 9)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (10, 1, 0, 0, NULL, 10)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (11, 1, 1, 1, N'<Data />', 11)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (12, 1, 0, 0, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (13, 1, 0, 0, NULL, 13)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (14, 1, 1, 1, N'<Data />', 14)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (15, 2, 0, 0, N'<Data />', 13)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (16, 2, 1, 1, NULL, 12)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (17, 1, 1, 1, N'<Data />', 15)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (18, 1, 0, 0, NULL, 16)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (19, 1, 0, 0, NULL, 17)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (20, 1, 0, 0, NULL, 18)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (21, 2, 0, 0, NULL, 17)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (22, 3, 1, 1, N'<Data />', 17)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (23, 1, 1, 1, N'<Data />', 19)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (24, 1, 0, 0, NULL, 20)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (25, 1, 0, 0, NULL, 21)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (26, 1, 0, 0, NULL, 22)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (27, 1, 0, 0, NULL, 23)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (28, 1, 1, 1, N'<Data />', 24)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (29, 1, 0, 0, NULL, 25)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (30, 2, 0, 0, NULL, 25)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (31, 3, 0, 0, NULL, 25)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (32, 4, 0, 0, NULL, 25)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (33, 5, 1, 1, NULL, 25)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (34, 1, 0, 0, N'<Data />', 26)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (35, 1, 0, 0, NULL, 27)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (36, 2, 1, 1, NULL, 27)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (37, 1, 1, 1, NULL, 28)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (38, 1, 1, 1, NULL, 29)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (39, 1, 1, 1, NULL, 30)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (40, 1, 1, 1, NULL, 31)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (41, 1, 1, 1, NULL, 32)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (42, 1, 1, 1, NULL, 33)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (43, 1, 1, 1, NULL, 34)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (44, 1, 1, 1, NULL, 35)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (45, 1, 1, 1, NULL, 36)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (46, 1, 1, 1, NULL, 37)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (47, 2, 0, 0, NULL, 21)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (48, 2, 0, 0, NULL, 23)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (49, 3, 0, 0, NULL, 21)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (50, 2, 1, 1, NULL, 22)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (51, 4, 1, 0, N'<Data />', 21)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (52, 3, 0, 0, NULL, 23)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (53, 2, 1, 1, NULL, 20)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (54, 2, 1, 1, NULL, 18)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (55, 2, 1, 1, NULL, 16)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (56, 4, 0, 0, NULL, 23)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (57, 5, 0, 1, NULL, 21)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (58, 5, 0, 0, NULL, 23)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (59, 6, 1, 1, NULL, 23)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (60, 2, 1, 1, N'<Data><ProfilePart><FirstName>Kyle!</FirstName><Resume>{16},{38}</Resume></ProfilePart></Data>', 26)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (61, 1, 1, 1, NULL, 38)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (62, 1, 1, 1, NULL, 39)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (63, 1, 1, 1, NULL, 40)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (64, 1, 1, 1, NULL, 41)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (65, 1, 1, 1, NULL, 42)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (66, 1, 1, 1, NULL, 43)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (67, 1, 1, 0, NULL, 44)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (68, 2, 0, 1, NULL, 44)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (69, 1, 1, 1, NULL, 45)
INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] ([Id], [Number], [Published], [Latest], [Data], [ContentItemRecord_id]) VALUES (70, 1, 1, 1, NULL, 46)
SET IDENTITY_INSERT [dbo].[Orchard_Framework_ContentItemVersionRecord] OFF
SET IDENTITY_INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ON 

INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (1, N'Site')
INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (2, N'User')
INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (3, N'Layer')
INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (4, N'HtmlWidget')
INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (5, N'Menu')
INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (6, N'Page')
INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (7, N'ContentMenuItem')
INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (8, N'MenuWidget')
INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (9, N'Document')
INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (10, N'DocumentContent')
INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (11, N'Taxonomy')
INSERT [dbo].[Orchard_Framework_ContentTypeRecord] ([Id], [Name]) VALUES (12, N'DocumentType')
SET IDENTITY_INSERT [dbo].[Orchard_Framework_ContentTypeRecord] OFF
SET IDENTITY_INSERT [dbo].[Orchard_Framework_CultureRecord] ON 

INSERT [dbo].[Orchard_Framework_CultureRecord] ([Id], [Culture]) VALUES (1, N'en-US')
SET IDENTITY_INSERT [dbo].[Orchard_Framework_CultureRecord] OFF
SET IDENTITY_INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ON 

INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (1, N'Orchard.Core.Settings.Migrations', 4)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (2, N'Orchard.ContentManagement.DataMigrations.FrameworkDataMigration', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (3, N'Orchard.Core.Common.Migrations', 2)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (4, N'Orchard.Core.Containers.Migrations', 3)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (5, N'Orchard.Core.Title.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (6, N'Orchard.Core.Navigation.Migrations', 3)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (7, N'Orchard.Core.Scheduling.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (8, N'Orchard.Pages.Migrations', 3)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (9, N'Orchard.Themes.ThemesDataMigration', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (10, N'Orchard.Users.UsersDataMigration', 2)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (11, N'Orchard.Roles.RolesDataMigration', 2)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (12, N'Orchard.Packaging.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (13, N'Orchard.PublishLater.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (14, N'Orchard.Widgets.WidgetsDataMigration', 4)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (15, N'Orchard.Alias.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (16, N'Orchard.Autoroute.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (17, N'Orchard.Blogs.Migrations', 5)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (18, N'Orchard.Comments.Migrations', 4)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (19, N'Orchard.Media.MediaDataMigration', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (20, N'Orchard.Projections.Migrations', 3)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (21, N'Orchard.Tags.TagsDataMigration', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (22, N'Orchard.Warmup.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (23, N'Vandelay.Industries.ThemePickerMigrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (24, N'Orchard.Messaging.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (25, N'Orchard.ContentPermissions.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (26, N'Orchard.Indexing.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (27, N'Orchard.Search.SearchDataMigration', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (28, N'Orchard.Email.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (29, N'Infusion.Documents.Migrations', 1)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (30, N'Contrib.Taxonomies.Migrations', 10)
INSERT [dbo].[Orchard_Framework_DataMigrationRecord] ([Id], [DataMigrationClass], [Version]) VALUES (31, N'Contrib.Profile.Migrations', 1)
SET IDENTITY_INSERT [dbo].[Orchard_Framework_DataMigrationRecord] OFF
SET IDENTITY_INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ON 

INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (1, 1, CAST(0x0000A10801289CD0 AS DateTime), 8)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (2, 1, CAST(0x0000A1080128A3D8 AS DateTime), 9)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (3, 1, CAST(0x0000A1080128A75C AS DateTime), 10)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (4, 0, CAST(0x0000A10801294338 AS DateTime), 13)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (5, 0, CAST(0x0000A1080129ACB0 AS DateTime), 12)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (6, 0, CAST(0x0000A108012B9688 AS DateTime), 15)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (7, 0, CAST(0x0000A108012BD378 AS DateTime), 16)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (8, 0, CAST(0x0000A108012C1644 AS DateTime), 17)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (9, 0, CAST(0x0000A108012CA9EC AS DateTime), 18)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (10, 0, CAST(0x0000A108014AC42C AS DateTime), 17)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (11, 0, CAST(0x0000A108014B2570 AS DateTime), 17)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (12, 0, CAST(0x0000A10801519FA4 AS DateTime), 15)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (13, 0, CAST(0x0000A10801519FA4 AS DateTime), 17)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (14, 0, CAST(0x0000A1080151BE1C AS DateTime), 16)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (15, 0, CAST(0x0000A1080151BE1C AS DateTime), 18)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (16, 0, CAST(0x0000A10801522FC8 AS DateTime), 19)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (17, 0, CAST(0x0000A10801526358 AS DateTime), 20)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (18, 0, CAST(0x0000A1080154035C AS DateTime), 21)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (19, 0, CAST(0x0000A10801543368 AS DateTime), 22)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (20, 0, CAST(0x0000A10801549CE0 AS DateTime), 23)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (21, 0, CAST(0x0000A1080161CF64 AS DateTime), 24)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (22, 0, CAST(0x0000A108016FD4D8 AS DateTime), 25)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (23, 0, CAST(0x0000A1090070A7D8 AS DateTime), 25)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (24, 0, CAST(0x0000A10900720C18 AS DateTime), 25)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (25, 0, CAST(0x0000A109007372B0 AS DateTime), 25)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (26, 0, CAST(0x0000A109007D8BD8 AS DateTime), 25)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (27, 0, CAST(0x0000A10A005F8B60 AS DateTime), 26)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (28, 0, CAST(0x0000A10A00632DD8 AS DateTime), 15)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (29, 0, CAST(0x0000A10A00632DD8 AS DateTime), 17)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (30, 0, CAST(0x0000A10A00632DD8 AS DateTime), 19)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (31, 0, CAST(0x0000A10A00632DD8 AS DateTime), 21)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (32, 0, CAST(0x0000A10A006342F0 AS DateTime), 16)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (33, 0, CAST(0x0000A10A006342F0 AS DateTime), 18)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (34, 0, CAST(0x0000A10A006342F0 AS DateTime), 20)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (35, 0, CAST(0x0000A10A006342F0 AS DateTime), 22)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (36, 0, CAST(0x0000A10A006342F0 AS DateTime), 23)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (37, 0, CAST(0x0000A10A008B26A8 AS DateTime), 21)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (38, 0, CAST(0x0000A10A008B2B58 AS DateTime), 20)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (39, 0, CAST(0x0000A10A008B3260 AS DateTime), 23)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (40, 0, CAST(0x0000A10A008B3CEC AS DateTime), 18)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (41, 0, CAST(0x0000A10A008B4520 AS DateTime), 16)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (42, 0, CAST(0x0000A10A008DE244 AS DateTime), 23)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (43, 0, CAST(0x0000A10A0093CB28 AS DateTime), 23)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (44, 0, CAST(0x0000A10A0094A2C8 AS DateTime), 26)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (45, 0, CAST(0x0000A10A00980724 AS DateTime), 22)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (46, 0, CAST(0x0000A10A00980724 AS DateTime), 20)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (47, 0, CAST(0x0000A10A00980724 AS DateTime), 18)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (48, 0, CAST(0x0000A10A00980724 AS DateTime), 16)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (49, 0, CAST(0x0000A10A00980724 AS DateTime), 23)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (50, 0, CAST(0x0000A10A009811B0 AS DateTime), 15)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (51, 0, CAST(0x0000A10A009811B0 AS DateTime), 17)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (52, 0, CAST(0x0000A10A009811B0 AS DateTime), 19)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (53, 0, CAST(0x0000A10A009811B0 AS DateTime), 21)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (54, 0, CAST(0x0000A10A009A9AE8 AS DateTime), 38)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (55, 1, CAST(0x0000A109008D26C4 AS DateTime), 13)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (56, 0, CAST(0x0000A109008EF224 AS DateTime), 39)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (57, 0, CAST(0x0000A109008F280C AS DateTime), 41)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (58, 0, CAST(0x0000A109008F280C AS DateTime), 40)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (59, 0, CAST(0x0000A10900A81E48 AS DateTime), 42)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (60, 0, CAST(0x0000A10900A87050 AS DateTime), 43)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (61, 0, CAST(0x0000A10900A8F138 AS DateTime), 44)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (62, 0, CAST(0x0000A10900A925F4 AS DateTime), 45)
INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] ([Id], [Action], [CreatedUtc], [ContentItemRecord_id]) VALUES (63, 0, CAST(0x0000A10900A95BDC AS DateTime), 46)
SET IDENTITY_INSERT [dbo].[Orchard_Indexing_IndexingTaskRecord] OFF
INSERT [dbo].[Orchard_Media_MediaSettingsPartRecord] ([Id], [UploadAllowedFileTypeWhitelist]) VALUES (1, N'jpg jpeg gif png txt doc docx xls xlsx pdf ppt pptx pps ppsx odt ods odp')
INSERT [dbo].[Orchard_Messaging_MessageSettingsPartRecord] ([Id], [DefaultChannelService]) VALUES (1, NULL)
SET IDENTITY_INSERT [dbo].[Orchard_Packaging_PackagingSource] ON 

INSERT [dbo].[Orchard_Packaging_PackagingSource] ([Id], [FeedTitle], [FeedUrl]) VALUES (1, N'Orchard Gallery', N'http://packages.orchardproject.net/FeedService.svc')
SET IDENTITY_INSERT [dbo].[Orchard_Packaging_PackagingSource] OFF
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (3)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (4)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (5)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (6)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (7)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (8)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (9)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (10)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (11)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (12)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (13)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (14)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (15)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (16)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (17)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (18)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (19)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (20)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (21)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (22)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (23)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (24)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (25)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (26)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (27)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (28)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (29)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (30)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (31)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (32)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (33)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (34)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (35)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (36)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (37)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (38)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (39)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (40)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (41)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (42)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (43)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (44)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (45)
INSERT [dbo].[Orchard_Projections_FieldIndexPartRecord] ([Id]) VALUES (46)
SET IDENTITY_INSERT [dbo].[Orchard_Projections_MemberBindingRecord] ON 

INSERT [dbo].[Orchard_Projections_MemberBindingRecord] ([Id], [Type], [Member], [Description], [DisplayName]) VALUES (1, N'Orchard.Core.Common.Models.CommonPartRecord', N'CreatedUtc', N'When the content item was created', N'Creation date')
INSERT [dbo].[Orchard_Projections_MemberBindingRecord] ([Id], [Type], [Member], [Description], [DisplayName]) VALUES (2, N'Orchard.Core.Common.Models.CommonPartRecord', N'ModifiedUtc', N'When the content item was modified', N'Modification date')
INSERT [dbo].[Orchard_Projections_MemberBindingRecord] ([Id], [Type], [Member], [Description], [DisplayName]) VALUES (3, N'Orchard.Core.Common.Models.CommonPartRecord', N'PublishedUtc', N'When the content item was published', N'Publication date')
INSERT [dbo].[Orchard_Projections_MemberBindingRecord] ([Id], [Type], [Member], [Description], [DisplayName]) VALUES (4, N'Orchard.Core.Title.Models.TitlePartRecord', N'Title', N'The title assigned using the Title part', N'Title Part Title')
INSERT [dbo].[Orchard_Projections_MemberBindingRecord] ([Id], [Type], [Member], [Description], [DisplayName]) VALUES (5, N'Orchard.Core.Common.Models.BodyPartRecord', N'Text', N'The text from the Body part', N'Body Part Text')
SET IDENTITY_INSERT [dbo].[Orchard_Projections_MemberBindingRecord] OFF
SET IDENTITY_INSERT [dbo].[Orchard_Projections_StringFieldIndexRecord] ON 

INSERT [dbo].[Orchard_Projections_StringFieldIndexRecord] ([Id], [PropertyName], [Value], [FieldIndexPartRecord_Id]) VALUES (1, N'ProfilePart.FirstName.', N'Kyle', 26)
SET IDENTITY_INSERT [dbo].[Orchard_Projections_StringFieldIndexRecord] OFF
SET IDENTITY_INSERT [dbo].[Orchard_Roles_PermissionRecord] ON 

INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (1, N'ApplyTheme', N'Orchard.Themes', N'Apply a Theme')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (2, N'PublishContent', N'Contents', N'Publish or unpublish content for others')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (3, N'EditContent', N'Contents', N'Edit content for others')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (4, N'DeleteContent', N'Contents', N'Delete content for others')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (5, N'PublishOwnContent', N'Contents', N'Publish or unpublish own content')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (6, N'EditOwnContent', N'Contents', N'Edit own content')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (7, N'DeleteOwnContent', N'Contents', N'Delete own content')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (8, N'ViewContent', N'Contents', N'View all content')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (9, N'ManageMainMenu', N'Navigation', N'Manage main menu')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (10, N'ManageFeatures', N'Orchard.Modules', N'Manage Features')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (11, N'SiteOwner', N'Orchard.Framework', N'Site Owners Permission')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (12, N'AccessAdminPanel', N'Orchard.Framework', N'Access admin panel')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (13, N'AccessFrontEnd', N'Orchard.Framework', N'Access site front-end')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (14, N'ManageWidgets', N'Orchard.Widgets', N'Managing Widgets')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (15, N'SetHomePage', N'Orchard.Autoroute', N'Set Home Page')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (16, N'ManageBlogs', N'Orchard.Blogs', N'Manage blogs for others')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (17, N'PublishBlogPost', N'Orchard.Blogs', N'Publish or unpublish blog post for others')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (18, N'EditBlogPost', N'Orchard.Blogs', N'Edit blog posts for others')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (19, N'DeleteBlogPost', N'Orchard.Blogs', N'Delete blog post for others')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (20, N'ManageOwnBlogs', N'Orchard.Blogs', N'Manage own blogs')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (21, N'EditOwnBlogPost', N'Orchard.Blogs', N'Edit own blog posts')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (22, N'ManageComments', N'Orchard.Comments', N'Manage comments')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (23, N'AddComment', N'Orchard.Comments', N'Add comment')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (24, N'EditContentTypes', N'Orchard.ContentTypes', N'Edit content types.')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (25, N'ManageMedia', N'Orchard.Media', N'Managing Media Files')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (26, N'ManageTags', N'Orchard.Tags', N'Manage tags')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (27, N'GrantPermission', N'Orchard.ContentPermissions', N'Grant permissions for others')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (28, N'GrantOwnPermission', N'Orchard.ContentPermissions', N'Grant permission for own content')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (29, N'ManageDocuments', N'Infusion.Documents', N'Manage documents for others')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (30, N'EditDocumentContent', N'Infusion.Documents', N'Edit document content for others')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (31, N'DeleteDocumentContent', N'Infusion.Documents', N'Delete document content for others')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (32, N'ManageOwnDocuments', N'Infusion.Documents', N'Manage own documents')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (33, N'EditOwnDocumentContent', N'Infusion.Documents', N'Edit own document content')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (34, N'ViewOwnProfile', N'Contrib.Profile', N'View own profile')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (35, N'ViewProfiles', N'Contrib.Profile', N'View profiles')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (36, N'Import', N'Orchard.ImportExport', N'Import Data')
INSERT [dbo].[Orchard_Roles_PermissionRecord] ([Id], [Name], [FeatureName], [Description]) VALUES (37, N'Export', N'Orchard.ImportExport', N'Export Data')
SET IDENTITY_INSERT [dbo].[Orchard_Roles_PermissionRecord] OFF
SET IDENTITY_INSERT [dbo].[Orchard_Roles_RoleRecord] ON 

INSERT [dbo].[Orchard_Roles_RoleRecord] ([Id], [Name]) VALUES (1, N'Administrator')
INSERT [dbo].[Orchard_Roles_RoleRecord] ([Id], [Name]) VALUES (2, N'Editor')
INSERT [dbo].[Orchard_Roles_RoleRecord] ([Id], [Name]) VALUES (3, N'Moderator')
INSERT [dbo].[Orchard_Roles_RoleRecord] ([Id], [Name]) VALUES (4, N'Author')
INSERT [dbo].[Orchard_Roles_RoleRecord] ([Id], [Name]) VALUES (5, N'Contributor')
INSERT [dbo].[Orchard_Roles_RoleRecord] ([Id], [Name]) VALUES (6, N'Authenticated')
INSERT [dbo].[Orchard_Roles_RoleRecord] ([Id], [Name]) VALUES (7, N'Anonymous')
SET IDENTITY_INSERT [dbo].[Orchard_Roles_RoleRecord] OFF
SET IDENTITY_INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ON 

INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (2, 1, 2, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (3, 1, 3, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (4, 1, 4, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (5, 1, 9, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (6, 1, 10, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (7, 1, 11, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (8, 1, 12, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (9, 2, 2, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (10, 2, 3, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (11, 2, 4, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (12, 2, 12, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (13, 3, 12, 3)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (14, 4, 5, 4)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (15, 4, 6, 4)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (16, 4, 7, 4)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (17, 4, 12, 4)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (18, 5, 6, 5)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (19, 5, 12, 5)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (20, 6, 8, 6)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (21, 6, 13, 6)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (22, 7, 8, 7)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (23, 7, 13, 7)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (24, 1, 14, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (25, 1, 15, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (26, 1, 16, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (27, 1, 22, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (28, 1, 23, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (29, 1, 24, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (30, 1, 25, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (31, 1, 26, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (32, 2, 15, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (33, 2, 17, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (34, 2, 18, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (35, 2, 19, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (36, 2, 23, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (37, 2, 25, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (38, 2, 26, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (39, 3, 22, 3)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (40, 3, 23, 3)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (41, 3, 26, 3)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (42, 4, 20, 4)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (43, 4, 23, 4)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (44, 4, 25, 4)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (45, 5, 21, 5)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (46, 5, 23, 5)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (47, 7, 23, 7)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (48, 6, 23, 6)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (49, 1, 27, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (50, 4, 28, 4)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (51, 1, 29, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (52, 2, 30, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (53, 2, 31, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (54, 4, 32, 4)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (55, 5, 33, 5)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (56, 6, 34, 6)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (57, 1, 35, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (58, 2, 34, 2)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (59, 3, 34, 3)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (60, 4, 34, 4)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (61, 5, 34, 5)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (62, 1, 36, 1)
INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] ([Id], [Role_id], [Permission_id], [RoleRecord_Id]) VALUES (63, 1, 37, 1)
SET IDENTITY_INSERT [dbo].[Orchard_Roles_RolesPermissionsRecord] OFF
SET IDENTITY_INSERT [dbo].[Orchard_Roles_UserRolesPartRecord] ON 

INSERT [dbo].[Orchard_Roles_UserRolesPartRecord] ([Id], [UserId], [Role_id]) VALUES (1, 24, 5)
INSERT [dbo].[Orchard_Roles_UserRolesPartRecord] ([Id], [UserId], [Role_id]) VALUES (2, 26, 1)
SET IDENTITY_INSERT [dbo].[Orchard_Roles_UserRolesPartRecord] OFF
INSERT [dbo].[Orchard_Search_SearchSettingsPartRecord] ([Id], [FilterCulture], [SearchedFields]) VALUES (1, 0, N'author, body, title')
INSERT [dbo].[Orchard_Tags_TagsPartRecord] ([Id]) VALUES (12)
INSERT [dbo].[Orchard_Tags_TagsPartRecord] ([Id]) VALUES (25)
INSERT [dbo].[Orchard_Tags_TagsPartRecord] ([Id]) VALUES (40)
INSERT [dbo].[Orchard_Themes_ThemeSiteSettingsPartRecord] ([Id], [CurrentThemeName]) VALUES (1, N'InfusionMobile')
INSERT [dbo].[Orchard_Users_RegistrationSettingsPartRecord] ([Id], [UsersCanRegister], [UsersMustValidateEmail], [ValidateEmailRegisteredWebsite], [ValidateEmailContactEMail], [UsersAreModerated], [NotifyModeration], [NotificationsRecipients], [EnableLostPassword]) VALUES (1, 0, 0, NULL, NULL, 0, 0, NULL, 0)
INSERT [dbo].[Orchard_Users_UserPartRecord] ([Id], [UserName], [Email], [NormalizedUserName], [Password], [PasswordFormat], [HashAlgorithm], [PasswordSalt], [RegistrationStatus], [EmailStatus], [EmailChallengeToken]) VALUES (2, N'admin', N'', N'admin', N'D8FSsZ5ZsHaaj3C0aZkaHj1OuHI=', N'Hashed', N'SHA1', N'0z3J4hiGdDIidGCt9TJKFQ==', N'Approved', N'Approved', NULL)
INSERT [dbo].[Orchard_Users_UserPartRecord] ([Id], [UserName], [Email], [NormalizedUserName], [Password], [PasswordFormat], [HashAlgorithm], [PasswordSalt], [RegistrationStatus], [EmailStatus], [EmailChallengeToken]) VALUES (24, N'jogara', N'jogara@itsonmessage.com', N'jogara', N's62JKC5Ef9wexod9C0oEtwhxYLc=', N'Hashed', N'SHA1', N'NpuYM1pwu0305FdokXCj8A==', N'Approved', N'Approved', NULL)
INSERT [dbo].[Orchard_Users_UserPartRecord] ([Id], [UserName], [Email], [NormalizedUserName], [Password], [PasswordFormat], [HashAlgorithm], [PasswordSalt], [RegistrationStatus], [EmailStatus], [EmailChallengeToken]) VALUES (26, N'kyletowb', N'kyle@cloudmetal.com', N'kyletowb', N'b5ykQao6hN8EA1hdt4C/CwZc2/4=', N'Hashed', N'SHA1', N'VgnRxsy5eItE8G39PxLfog==', N'Approved', N'Approved', NULL)
INSERT [dbo].[Orchard_Warmup_WarmupSettingsPartRecord] ([Id], [Urls], [Scheduled], [Delay], [OnPublish]) VALUES (1, NULL, 0, 90, 0)
INSERT [dbo].[Orchard_Widgets_LayerPartRecord] ([Id], [Name], [Description], [LayerRule]) VALUES (3, N'Default', N'The widgets in this layer are displayed on all pages', N'true')
INSERT [dbo].[Orchard_Widgets_LayerPartRecord] ([Id], [Name], [Description], [LayerRule]) VALUES (4, N'Authenticated', N'The widgets in this layer are displayed when the user is authenticated', N'authenticated')
INSERT [dbo].[Orchard_Widgets_LayerPartRecord] ([Id], [Name], [Description], [LayerRule]) VALUES (5, N'Anonymous', N'The widgets in this layer are displayed when the user is anonymous', N'not authenticated')
INSERT [dbo].[Orchard_Widgets_LayerPartRecord] ([Id], [Name], [Description], [LayerRule]) VALUES (6, N'Disabled', N'The widgets in this layer are never displayed', N'false')
INSERT [dbo].[Orchard_Widgets_LayerPartRecord] ([Id], [Name], [Description], [LayerRule]) VALUES (7, N'TheHomepage', N'The widgets in this layer are displayed on the home page', N'url ''~/''')
INSERT [dbo].[Orchard_Widgets_WidgetPartRecord] ([Id], [Title], [Position], [Zone], [RenderTitle], [Name]) VALUES (8, N'First Leader Aside', N'5', N'TripelFirst', 1, NULL)
INSERT [dbo].[Orchard_Widgets_WidgetPartRecord] ([Id], [Title], [Position], [Zone], [RenderTitle], [Name]) VALUES (9, N'Second Leader Aside', N'5', N'TripelSecond', 1, NULL)
INSERT [dbo].[Orchard_Widgets_WidgetPartRecord] ([Id], [Title], [Position], [Zone], [RenderTitle], [Name]) VALUES (10, N'Third Leader Aside', N'5', N'TripelThird', 1, NULL)
INSERT [dbo].[Orchard_Widgets_WidgetPartRecord] ([Id], [Title], [Position], [Zone], [RenderTitle], [Name]) VALUES (14, N'Main Menu', N'1', N'Navigation', 0, NULL)
SET IDENTITY_INSERT [dbo].[Settings_ContentFieldDefinitionRecord] ON 

INSERT [dbo].[Settings_ContentFieldDefinitionRecord] ([Id], [Name]) VALUES (1, N'TaxonomyField')
INSERT [dbo].[Settings_ContentFieldDefinitionRecord] ([Id], [Name]) VALUES (2, N'TextField')
INSERT [dbo].[Settings_ContentFieldDefinitionRecord] ([Id], [Name]) VALUES (3, N'ContentPickerField')
SET IDENTITY_INSERT [dbo].[Settings_ContentFieldDefinitionRecord] OFF
SET IDENTITY_INSERT [dbo].[Settings_ContentPartDefinitionRecord] ON 

INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (1, N'BodyPart', 0, N'<settings ContentPartSettings.Attachable="True" BodyPartSettings.FlavorDefault="html" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (2, N'CommonPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (3, N'IdentityPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (4, N'WidgetPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (5, N'ContainerWidgetPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (6, N'ContainerPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (7, N'ContainablePart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (8, N'CustomPropertiesPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (9, N'TitlePart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (10, N'MenuPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (11, N'NavigationPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (12, N'MenuWidgetPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (13, N'AdminMenuPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (14, N'ContentMenuItemPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (15, N'PublishLaterPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (16, N'AutoroutePart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (17, N'LayerPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (18, N'BlogPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (19, N'BlogPostPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (20, N'RecentBlogPostsPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (21, N'BlogArchivesPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (22, N'CommentPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (23, N'CommentsContainerPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (24, N'CommentsPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (25, N'QueryPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (26, N'ProjectionPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (27, N'NavigationQueryPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (28, N'TagsPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (29, N'LocalizationPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (30, N'ContentPermissionsPart', 0, N'<settings ContentPartSettings.Attachable="True" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (31, N'SearchFormPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (32, N'DocumentPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (33, N'DocumentContentPart', 0, N'<settings ContentPartSettings.Attachable="False" />')
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (34, N'TaxonomyPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (35, N'TaxonomyMenuPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (36, N'TermWidgetPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (37, N'TermPart', 0, NULL)
INSERT [dbo].[Settings_ContentPartDefinitionRecord] ([Id], [Name], [Hidden], [Settings]) VALUES (38, N'ProfilePart', 0, N'<settings ContentPartSettings.Attachable="False" />')
SET IDENTITY_INSERT [dbo].[Settings_ContentPartDefinitionRecord] OFF
SET IDENTITY_INSERT [dbo].[Settings_ContentPartFieldDefinitionRecord] ON 

INSERT [dbo].[Settings_ContentPartFieldDefinitionRecord] ([Id], [Name], [Settings], [ContentFieldDefinitionRecord_id], [ContentPartDefinitionRecord_Id]) VALUES (1, N'DocumentType', N'<settings DisplayName="DocumentType" TaxonomyFieldSettings.Taxonomy="DocumentType" TaxonomyFieldSettings.LeavesOnly="True" TaxonomyFieldSettings.SingleChoice="True" />', 1, 33)
INSERT [dbo].[Settings_ContentPartFieldDefinitionRecord] ([Id], [Name], [Settings], [ContentFieldDefinitionRecord_id], [ContentPartDefinitionRecord_Id]) VALUES (2, N'FirstName', N'<settings DisplayName="First Name" />', 2, 38)
INSERT [dbo].[Settings_ContentPartFieldDefinitionRecord] ([Id], [Name], [Settings], [ContentFieldDefinitionRecord_id], [ContentPartDefinitionRecord_Id]) VALUES (3, N'Resume', N'<settings DisplayName="Resume" />', 3, 38)
SET IDENTITY_INSERT [dbo].[Settings_ContentPartFieldDefinitionRecord] OFF
SET IDENTITY_INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ON 

INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (1, N'Site', N'Site', 0, N'<settings />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (2, N'ContainerWidget', N'Container Widget', 0, N'<settings Stereotype="Widget" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (3, N'Page', N'Page', 0, N'<settings ContentTypeSettings.Creatable="True" ContentTypeSettings.Draftable="True" TypeIndexing.Included="true" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (4, N'MenuItem', N'Custom Link', 0, N'<settings Description="Represents a simple custom link with a text and an url." Stereotype="MenuItem" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (5, N'Menu', N'Menu', 0, N'<settings />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (6, N'MenuWidget', N'Menu Widget', 0, N'<settings Stereotype="Widget" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (7, N'HtmlMenuItem', N'Html Menu Item', 0, N'<settings Description="Renders some custom HTML in the menu." BodyPartSettings.FlavorDefault="html" Stereotype="MenuItem" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (8, N'ContentMenuItem', N'Content Menu Item', 0, N'<settings Description="Adds a Content Item to the menu." Stereotype="MenuItem" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (9, N'User', N'User', 0, N'<settings ContentTypeSettings.Creatable="False" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (10, N'Layer', N'Layer', 0, N'<settings />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (11, N'HtmlWidget', N'Html Widget', 0, N'<settings Stereotype="Widget" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (12, N'Blog', N'Blog', 0, N'<settings />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (13, N'BlogPost', N'Blog Post', 0, N'<settings ContentTypeSettings.Draftable="True" TypeIndexing.Included="true" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (14, N'RecentBlogPosts', N'Recent Blog Posts', 0, N'<settings Stereotype="Widget" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (15, N'BlogArchives', N'Blog Archives', 0, N'<settings Stereotype="Widget" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (16, N'Comment', N'Comment', 0, N'<settings />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (17, N'Query', N'Query', 0, N'<settings />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (18, N'ProjectionWidget', N'Projection Widget', 0, N'<settings Stereotype="Widget" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (19, N'ProjectionPage', N'Projection', 0, N'<settings ContentTypeSettings.Creatable="True" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (20, N'NavigationQueryMenuItem', N'Query Link', 0, N'<settings Description="Injects menu items from a Query" Stereotype="MenuItem" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (21, N'SearchForm', N'Search Form', 0, N'<settings Stereotype="Widget" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (22, N'Document', N'Document', 0, N'<settings ContentTypeSettings.Creatable="True" ContentTypeSettings.Draftable="False" TypeIndexing.Included="True" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (23, N'DocumentContent', N'Document Content', 0, N'<settings ContentTypeSettings.Draftable="True" ContentTypeSettings.Creatable="True" TypeIndexing.Included="True" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (24, N'Taxonomy', N'Taxonomy', 0, N'<settings />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (25, N'TaxonomyMenu', N'Taxonomy Menu', 0, N'<settings Stereotype="Widget" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (26, N'TermWidget', N'Term Widget', 0, N'<settings Stereotype="Widget" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (27, N'Document-Type', N'Document Type Term', 0, N'<settings Taxonomy="Document Type" />')
INSERT [dbo].[Settings_ContentTypeDefinitionRecord] ([Id], [Name], [DisplayName], [Hidden], [Settings]) VALUES (28, N'DocumentType', N'DocumentType Term', 0, N'<settings Taxonomy="DocumentType" />')
SET IDENTITY_INSERT [dbo].[Settings_ContentTypeDefinitionRecord] OFF
SET IDENTITY_INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ON 

INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (1, N'<settings />', 2, 2)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (2, N'<settings />', 4, 2)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (3, N'<settings />', 5, 2)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (4, N'<settings />', 11, 3)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (5, N'<settings DateEditorSettings.ShowDateEditor="true" />', 2, 3)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (6, N'<settings />', 15, 3)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (7, N'<settings />', 9, 3)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (8, N'<settings AutorouteSettings.AllowCustomPattern="true" AutorouteSettings.AutomaticAdjustmentOnEdit="false" AutorouteSettings.PatternDefinitions="[{Name:''Title'', Pattern: ''{Content.Slug}'', Description: ''my-page''}]" AutorouteSettings.DefaultPatternIndex="0" />', 16, 3)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (9, N'<settings />', 1, 3)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (10, N'<settings />', 10, 4)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (11, N'<settings />', 3, 4)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (12, N'<settings />', 2, 4)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (13, N'<settings OwnerEditorSettings.ShowOwnerEditor="false" />', 2, 5)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (14, N'<settings />', 9, 5)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (15, N'<settings />', 2, 6)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (16, N'<settings />', 3, 6)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (17, N'<settings />', 4, 6)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (18, N'<settings />', 12, 6)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (19, N'<settings />', 10, 7)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (20, N'<settings />', 1, 7)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (21, N'<settings />', 2, 7)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (22, N'<settings />', 3, 7)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (23, N'<settings />', 10, 8)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (24, N'<settings />', 2, 8)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (25, N'<settings />', 3, 8)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (26, N'<settings />', 14, 8)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (27, N'<settings />', 17, 10)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (28, N'<settings OwnerEditorSettings.ShowOwnerEditor="false" />', 2, 10)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (29, N'<settings />', 4, 11)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (30, N'<settings />', 1, 11)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (31, N'<settings />', 2, 11)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (32, N'<settings />', 3, 11)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (33, N'<settings />', 18, 12)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (34, N'<settings />', 2, 12)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (35, N'<settings />', 9, 12)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (36, N'<settings AutorouteSettings.AllowCustomPattern="true" AutorouteSettings.AutomaticAdjustmentOnEdit="false" AutorouteSettings.PatternDefinitions="[{Name:''Title'', Pattern: ''{Content.Slug}'', Description: ''my-blog''}]" AutorouteSettings.DefaultPatternIndex="0" />', 16, 12)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (37, N'<settings />', 10, 12)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (38, N'<settings AdminMenuPartTypeSettings.DefaultPosition="2" />', 13, 12)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (39, N'<settings />', 23, 12)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (40, N'<settings />', 19, 13)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (41, N'<settings DateEditorSettings.ShowDateEditor="true" />', 2, 13)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (42, N'<settings />', 15, 13)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (43, N'<settings />', 9, 13)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (44, N'<settings AutorouteSettings.AllowCustomPattern="true" AutorouteSettings.AutomaticAdjustmentOnEdit="false" AutorouteSettings.PatternDefinitions="[{Name:''Blog and Title'', Pattern: ''{Content.Container.Path}/{Content.Slug}'', Description: ''my-blog/my-post''}]" AutorouteSettings.DefaultPatternIndex="0" />', 16, 13)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (45, N'<settings />', 1, 13)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (46, N'<settings />', 20, 14)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (47, N'<settings />', 2, 14)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (48, N'<settings />', 4, 14)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (49, N'<settings />', 21, 15)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (50, N'<settings />', 2, 15)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (51, N'<settings />', 4, 15)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (52, N'<settings />', 22, 16)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (53, N'<settings OwnerEditorSettings.ShowOwnerEditor="false" DateEditorSettings.ShowDateEditor="false" />', 2, 16)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (54, N'<settings />', 3, 16)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (55, N'<settings />', 25, 17)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (56, N'<settings />', 9, 17)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (57, N'<settings />', 3, 17)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (58, N'<settings />', 4, 18)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (59, N'<settings />', 2, 18)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (60, N'<settings />', 3, 18)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (61, N'<settings />', 26, 18)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (62, N'<settings />', 2, 19)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (63, N'<settings />', 9, 19)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (64, N'<settings AutorouteSettings.AllowCustomPattern="true" AutorouteSettings.AutomaticAdjustmentOnEdit="false" AutorouteSettings.PatternDefinitions="[{Name:''Title'', Pattern: ''{Content.Slug}'', Description: ''my-projections''}]" AutorouteSettings.DefaultPatternIndex="0" />', 16, 19)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (65, N'<settings />', 10, 19)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (66, N'<settings />', 26, 19)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (67, N'<settings AdminMenuPartTypeSettings.DefaultPosition="5" />', 13, 19)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (68, N'<settings />', 27, 20)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (69, N'<settings />', 10, 20)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (70, N'<settings />', 2, 20)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (71, N'<settings />', 28, 3)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (72, N'<settings />', 29, 3)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (73, N'<settings />', 24, 13)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (74, N'<settings />', 28, 13)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (75, N'<settings />', 29, 13)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (76, N'<settings />', 31, 21)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (77, N'<settings />', 2, 21)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (78, N'<settings />', 4, 21)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (79, N'<settings />', 32, 22)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (80, N'<settings DateEditorSettings.ShowDateEditor="False" OwnerEditorSettings.ShowOwnerEditor="True" />', 2, 22)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (81, N'<settings />', 9, 22)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (82, N'<settings AutorouteSettings.AllowCustomPattern="True" AutorouteSettings.AutomaticAdjustmentOnEdit="False" AutorouteSettings.PatternDefinitions="[{&quot;Name&quot;:&quot;Title&quot;,&quot;Pattern&quot;:&quot;{Content.Slug}&quot;,&quot;Description&quot;:&quot;my-blog&quot;}]" AutorouteSettings.DefaultPatternIndex="0" AutorouteSettings.PerItemConfiguration="False" />', 16, 22)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (83, N'<settings />', 10, 22)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (84, N'<settings AdminMenuPartTypeSettings.DefaultPosition="2" />', 13, 22)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (85, N'<settings />', 33, 23)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (86, N'<settings DateEditorSettings.ShowDateEditor="True" OwnerEditorSettings.ShowOwnerEditor="True" />', 2, 23)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (87, N'<settings />', 15, 23)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (88, N'<settings />', 9, 23)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (89, N'<settings AutorouteSettings.AllowCustomPattern="True" AutorouteSettings.AutomaticAdjustmentOnEdit="False" AutorouteSettings.PatternDefinitions="[{&quot;Name&quot;:&quot;Blog and Title&quot;,&quot;Pattern&quot;:&quot;{Content.Container.Path}/{Content.Slug}&quot;,&quot;Description&quot;:&quot;my-blog/my-post&quot;}]" AutorouteSettings.DefaultPatternIndex="0" AutorouteSettings.PerItemConfiguration="False" />', 16, 23)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (90, N'<settings BodyTypePartSettings.Flavor="html" />', 1, 23)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (91, N'<settings />', 34, 24)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (92, N'<settings />', 2, 24)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (93, N'<settings />', 9, 24)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (94, N'<settings AutorouteSettings.AllowCustomPattern="true" AutorouteSettings.AutomaticAdjustmentOnEdit="false" AutorouteSettings.PatternDefinitions="[{Name:''Title'', Pattern: ''{Content.Slug}'', Description: ''my-taxonomy''}]" AutorouteSettings.DefaultPatternIndex="0" />', 16, 24)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (95, N'<settings />', 35, 25)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (96, N'<settings />', 2, 25)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (97, N'<settings />', 4, 25)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (98, N'<settings />', 36, 26)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (99, N'<settings />', 2, 26)
GO
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (100, N'<settings />', 4, 26)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (101, N'<settings />', 37, 27)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (102, N'<settings />', 9, 27)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (103, N'<settings AutorouteSettings.AllowCustomPattern="true" AutorouteSettings.AutomaticAdjustmentOnEdit="false" AutorouteSettings.PatternDefinitions="[{Name:''Taxonomy and Title'', Pattern: ''{Content.Container.Path}/{Content.Slug}'', Description: ''my-taxonomy/my-term/sub-term''}]" AutorouteSettings.DefaultPatternIndex="0" />', 16, 27)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (104, N'<settings />', 2, 27)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (105, N'<settings />', 37, 28)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (106, N'<settings />', 9, 28)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (107, N'<settings AutorouteSettings.AllowCustomPattern="true" AutorouteSettings.AutomaticAdjustmentOnEdit="false" AutorouteSettings.PatternDefinitions="[{Name:''Taxonomy and Title'', Pattern: ''{Content.Container.Path}/{Content.Slug}'', Description: ''my-taxonomy/my-term/sub-term''}]" AutorouteSettings.DefaultPatternIndex="0" />', 16, 28)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (108, N'<settings />', 2, 28)
INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] ([Id], [Settings], [ContentPartDefinitionRecord_id], [ContentTypeDefinitionRecord_Id]) VALUES (109, N'<settings />', 38, 9)
SET IDENTITY_INSERT [dbo].[Settings_ContentTypePartDefinitionRecord] OFF
SET IDENTITY_INSERT [dbo].[Settings_ShellDescriptorRecord] ON 

INSERT [dbo].[Settings_ShellDescriptorRecord] ([Id], [SerialNumber]) VALUES (1, 38)
SET IDENTITY_INSERT [dbo].[Settings_ShellDescriptorRecord] OFF
SET IDENTITY_INSERT [dbo].[Settings_ShellFeatureRecord] ON 

INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (2992, N'Orchard.Framework', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (2993, N'Common', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (2994, N'Containers', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (2995, N'Contents', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (2996, N'Dashboard', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (2997, N'Feeds', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (2998, N'Navigation', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (2999, N'Reports', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3000, N'Scheduling', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3001, N'Settings', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3002, N'Shapes', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3003, N'Title', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3004, N'Orchard.Pages', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3005, N'Orchard.Themes', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3006, N'Orchard.Users', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3007, N'Orchard.Roles', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3008, N'Orchard.Modules', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3009, N'PackagingServices', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3010, N'Orchard.Packaging', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3011, N'Gallery', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3012, N'Orchard.Recipes', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3013, N'Orchard.Blogs', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3014, N'Orchard.Widgets', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3015, N'Orchard.Scripting', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3016, N'Orchard.jQuery', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3017, N'Orchard.PublishLater', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3018, N'Orchard.jQuery', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3019, N'Orchard.Comments', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3020, N'Orchard.Tags', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3021, N'Orchard.jQuery', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3022, N'Orchard.Alias', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3023, N'Orchard.Autoroute', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3024, N'Orchard.Alias', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3025, N'Orchard.Tokens', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3026, N'TinyMce', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3027, N'Orchard.Media', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3028, N'Orchard.MediaPicker', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3029, N'Orchard.Media', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3030, N'Orchard.jQuery', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3031, N'Orchard.ContentPicker', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3032, N'Orchard.PublishLater', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3033, N'Orchard.jQuery', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3034, N'Orchard.jQuery', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3035, N'Orchard.Widgets', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3036, N'Orchard.Scripting', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3037, N'Orchard.Widgets.PageLayerHinting', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3038, N'Orchard.Widgets', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3039, N'Orchard.Scripting', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3040, N'Orchard.ContentTypes', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3041, N'Orchard.Scripting', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3042, N'Orchard.Scripting.Lightweight', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3043, N'Orchard.Scripting', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3044, N'PackagingServices', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3045, N'Orchard.Packaging', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3046, N'Orchard.Warmup', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3047, N'Orchard.Projections', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3048, N'Orchard.Tokens', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3049, N'Orchard.Forms', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3050, N'Orchard.Fields', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3051, N'Orchard.jQuery', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3052, N'Orchard.Media', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3053, N'Orchard.MediaPicker', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3054, N'Orchard.Media', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3055, N'Orchard.jQuery', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3056, N'TheThemeMachine', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3057, N'Vandelay.ThemePicker', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3058, N'Orchard.Messaging', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3059, N'Orchard.ContentPermissions', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3060, N'Orchard.Indexing', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3061, N'Lucene', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3062, N'Orchard.Search', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3063, N'Orchard.Search.Content', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3064, N'Orchard.Search.ContentPicker', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3065, N'Orchard.Email', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3066, N'Infusion', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3067, N'InfusionMobile', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3068, N'Infusion.Documents', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3069, N'Orchard.Knockout', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3070, N'Gallery.Updates', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3071, N'InfusionMobile', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3072, N'Infusion', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3073, N'Contrib.Taxonomies', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3074, N'Orchard.Indexing', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3075, N'Lucene', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3076, N'Orchard.Search', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3077, N'Orchard.Search.Content', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3078, N'Orchard.Search.ContentPicker', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3079, N'Contrib.Profile', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3080, N'InfusionMobile', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3081, N'Infusion', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3082, N'InfusionMobile', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3083, N'Infusion', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3084, N'InfusionMobile', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3085, N'Infusion', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3086, N'InfusionMobile', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3087, N'Infusion', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3088, N'InfusionMobile', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3089, N'Orchard.ImportExport', 1)
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3090, N'Infusion', 1)
GO
INSERT [dbo].[Settings_ShellFeatureRecord] ([Id], [Name], [ShellDescriptorRecord_id]) VALUES (3091, N'InfusionMobile', 1)
SET IDENTITY_INSERT [dbo].[Settings_ShellFeatureRecord] OFF
SET IDENTITY_INSERT [dbo].[Settings_ShellFeatureStateRecord] ON 

INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (1, N'Orchard.Framework', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (2, N'Common', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (3, N'Containers', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (4, N'Contents', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (5, N'Dashboard', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (6, N'Feeds', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (7, N'Navigation', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (8, N'Reports', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (9, N'Scheduling', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (10, N'Settings', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (11, N'Shapes', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (12, N'Title', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (13, N'Orchard.Pages', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (14, N'Orchard.Themes', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (15, N'Orchard.Users', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (16, N'Orchard.Roles', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (17, N'Orchard.Modules', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (18, N'PackagingServices', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (19, N'Orchard.Packaging', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (20, N'Gallery', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (21, N'Orchard.Recipes', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (22, N'Orchard.Blogs', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (23, N'Orchard.Widgets', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (24, N'Orchard.Scripting', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (25, N'Orchard.jQuery', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (26, N'Orchard.PublishLater', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (27, N'Orchard.Comments', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (28, N'Orchard.Tags', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (29, N'Orchard.Alias', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (30, N'Orchard.Autoroute', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (31, N'Orchard.Tokens', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (32, N'TinyMce', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (33, N'Orchard.Media', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (34, N'Orchard.MediaPicker', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (35, N'Orchard.ContentPicker', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (36, N'Orchard.Widgets.PageLayerHinting', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (37, N'Orchard.ContentTypes', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (38, N'Orchard.Scripting.Lightweight', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (39, N'Orchard.Warmup', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (40, N'Orchard.Projections', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (41, N'Orchard.Forms', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (42, N'Orchard.Fields', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (43, N'TheThemeMachine', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (44, N'Vandelay.ThemePicker', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (45, N'Orchard.Messaging', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (46, N'Orchard.ContentPermissions', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (47, N'Orchard.Indexing', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (48, N'Lucene', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (49, N'Orchard.Search', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (50, N'Orchard.Search.Content', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (51, N'Orchard.Search.ContentPicker', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (52, N'Orchard.Email', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (53, N'Infusion', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (54, N'InfusionMobile', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (55, N'Infusion.Documents', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (56, N'Orchard.Knockout', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (57, N'Gallery.Updates', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (58, N'Contrib.Taxonomies', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (59, N'Contrib.Profile', N'Up', N'Up', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (60, N'Orchard.DesignerTools', N'Up', N'Down', 1)
INSERT [dbo].[Settings_ShellFeatureStateRecord] ([Id], [Name], [InstallState], [EnableState], [ShellStateRecord_Id]) VALUES (61, N'Orchard.ImportExport', N'Up', N'Up', 1)
SET IDENTITY_INSERT [dbo].[Settings_ShellFeatureStateRecord] OFF
SET IDENTITY_INSERT [dbo].[Settings_ShellStateRecord] ON 

INSERT [dbo].[Settings_ShellStateRecord] ([Id], [Unused]) VALUES (1, NULL)
SET IDENTITY_INSERT [dbo].[Settings_ShellStateRecord] OFF
INSERT [dbo].[Settings_SiteSettings2PartRecord] ([Id], [BaseUrl]) VALUES (1, N'http://infusion.azurewebsites.net')
INSERT [dbo].[Settings_SiteSettingsPartRecord] ([Id], [SiteSalt], [SiteName], [SuperUser], [PageTitleSeparator], [HomePage], [SiteCulture], [ResourceDebugMode], [PageSize], [SiteTimeZone]) VALUES (1, N'9a5a62a477604b22b792111a0a3bf198', N'Infusion', N'admin', N' - ', NULL, N'en-US', N'FromAppSetting', 10, N'GMT Standard Time')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (11, 11, N'Main Menu')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (12, 12, N'Welcome to Orchard!')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (16, 12, N'Welcome to Infusion!')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (17, 15, N'PAP 50-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (18, 16, N'PAP 50-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (19, 17, N'PAP 250-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (20, 18, N'PAP 250-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (21, 17, N'PAP 250-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (22, 17, N'PAP 250-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (23, 19, N'COPAY 50-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (24, 20, N'Overview')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (25, 21, N'COPAY 500-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (26, 22, N'Overview')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (27, 23, N'Copay Products Built with Lash Group’s Expertise')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (29, 25, N'Search Page Example')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (30, 25, N'Search Page Example')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (31, 25, N'Search Page Example')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (32, 25, N'Search Page Example')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (33, 25, N'Search Page Example')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (35, 27, N'Document Type')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (36, 27, N'DocumentType')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (37, 28, N'ElevatorPitch')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (38, 29, N'PainPoints')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (39, 30, N'FAQ')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (40, 31, N'Benefits')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (41, 32, N'RSS')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (42, 33, N'Comments')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (43, 34, N'Rating')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (44, 35, N'Presentation')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (45, 36, N'WhitePaper')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (46, 37, N'CaseStudy')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (47, 21, N'COPAY 500-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (48, 23, N'Copay Products Built with Lash Group’s Expertise')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (49, 21, N'COPAY 500-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (50, 22, N'Overview')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (51, 21, N'COPAY 500-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (52, 23, N'Copay Products Built with Lash Group’s Expertise')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (53, 20, N'Overview')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (54, 18, N'PAP 250-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (55, 16, N'PAP 50-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (56, 23, N'Copay Products Built with Lash Group’s Expertise')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (57, 21, N'COPAY 500-WORD MESSAGING')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (58, 23, N'Copay Products Built with Lash Group’s Expertise')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (59, 23, N'Copay Products Built with Lash Group’s Expertise')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (61, 38, N'My Resume')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (63, 40, N'Test')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (65, 42, N'Lash Group PAP Messaging')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (66, 43, N'PAP Mandatory Messages')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (67, 44, N'PAP 50-Word Messaging')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (68, 44, N'PAP 50-Word Messaging')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (69, 45, N'PAP 250-Word Messaging')
INSERT [dbo].[Title_TitlePartRecord] ([Id], [ContentItemRecord_id], [Title]) VALUES (70, 46, N'PAP 500-Word Messaging')
SET IDENTITY_INSERT [dbo].[Vandelay_Industries_ThemePickerSettingsRecord] ON 

INSERT [dbo].[Vandelay_Industries_ThemePickerSettingsRecord] ([Id], [RuleType], [Name], [Criterion], [Theme], [Priority], [Zone], [Position]) VALUES (1, N'UserAgentThemeSelectionRule', N'Mobile', N'phone', N'InfusionMobile', 10, N'Header', N'1')
SET IDENTITY_INSERT [dbo].[Vandelay_Industries_ThemePickerSettingsRecord] OFF
ALTER TABLE [dbo].[Containers_ContainerPartRecord] ADD  DEFAULT ((1)) FOR [ItemsShown]
GO
ALTER TABLE [dbo].[Orchard_Autoroute_AutoroutePartRecord] ADD  DEFAULT ((0)) FOR [UseCustomPattern]
GO
ALTER TABLE [dbo].[Orchard_Media_MediaSettingsPartRecord] ADD  DEFAULT ('jpg jpeg gif png txt doc docx xls xlsx pdf ppt pptx pps ppsx odt ods odp') FOR [UploadAllowedFileTypeWhitelist]
GO
ALTER TABLE [dbo].[Orchard_Users_RegistrationSettingsPartRecord] ADD  DEFAULT ((0)) FOR [UsersCanRegister]
GO
ALTER TABLE [dbo].[Orchard_Users_RegistrationSettingsPartRecord] ADD  DEFAULT ((0)) FOR [UsersMustValidateEmail]
GO
ALTER TABLE [dbo].[Orchard_Users_RegistrationSettingsPartRecord] ADD  DEFAULT ((0)) FOR [UsersAreModerated]
GO
ALTER TABLE [dbo].[Orchard_Users_RegistrationSettingsPartRecord] ADD  DEFAULT ((0)) FOR [NotifyModeration]
GO
ALTER TABLE [dbo].[Orchard_Users_RegistrationSettingsPartRecord] ADD  DEFAULT ((0)) FOR [EnableLostPassword]
GO
ALTER TABLE [dbo].[Orchard_Users_UserPartRecord] ADD  DEFAULT ('Approved') FOR [RegistrationStatus]
GO
ALTER TABLE [dbo].[Orchard_Users_UserPartRecord] ADD  DEFAULT ('Approved') FOR [EmailStatus]
GO
ALTER TABLE [dbo].[Orchard_Widgets_WidgetPartRecord] ADD  DEFAULT ((1)) FOR [RenderTitle]
GO
ALTER TABLE [dbo].[Settings_SiteSettingsPartRecord] ADD  DEFAULT ('FromAppSetting') FOR [ResourceDebugMode]
GO
ALTER TABLE [dbo].[Vandelay_Industries_ThemePickerSettingsRecord] ADD  DEFAULT ('') FOR [RuleType]
GO
ALTER TABLE [dbo].[Vandelay_Industries_ThemePickerSettingsRecord] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[Vandelay_Industries_ThemePickerSettingsRecord] ADD  DEFAULT ('') FOR [Criterion]
GO
ALTER TABLE [dbo].[Vandelay_Industries_ThemePickerSettingsRecord] ADD  DEFAULT ('') FOR [Theme]
GO
ALTER TABLE [dbo].[Vandelay_Industries_ThemePickerSettingsRecord] ADD  DEFAULT ((10)) FOR [Priority]
GO
ALTER TABLE [dbo].[Vandelay_Industries_ThemePickerSettingsRecord] ADD  DEFAULT ('') FOR [Zone]
GO
ALTER TABLE [dbo].[Vandelay_Industries_ThemePickerSettingsRecord] ADD  DEFAULT ('') FOR [Position]
GO
