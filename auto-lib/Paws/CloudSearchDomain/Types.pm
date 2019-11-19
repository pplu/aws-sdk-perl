package Paws::CloudSearchDomain::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type CloudSearchDomain_Bucket, { class => 'Paws::CloudSearchDomain::Bucket' };
  class_type CloudSearchDomain_BucketInfo, { class => 'Paws::CloudSearchDomain::BucketInfo' };
  class_type CloudSearchDomain_DocumentServiceException, { class => 'Paws::CloudSearchDomain::DocumentServiceException' };
  class_type CloudSearchDomain_DocumentServiceWarning, { class => 'Paws::CloudSearchDomain::DocumentServiceWarning' };
  class_type CloudSearchDomain_Exprs, { class => 'Paws::CloudSearchDomain::Exprs' };
  class_type CloudSearchDomain_Facets, { class => 'Paws::CloudSearchDomain::Facets' };
  class_type CloudSearchDomain_Fields, { class => 'Paws::CloudSearchDomain::Fields' };
  class_type CloudSearchDomain_FieldStats, { class => 'Paws::CloudSearchDomain::FieldStats' };
  class_type CloudSearchDomain_Highlights, { class => 'Paws::CloudSearchDomain::Highlights' };
  class_type CloudSearchDomain_Hit, { class => 'Paws::CloudSearchDomain::Hit' };
  class_type CloudSearchDomain_Hits, { class => 'Paws::CloudSearchDomain::Hits' };
  class_type CloudSearchDomain_SearchException, { class => 'Paws::CloudSearchDomain::SearchException' };
  class_type CloudSearchDomain_SearchRequest, { class => 'Paws::CloudSearchDomain::SearchRequest' };
  class_type CloudSearchDomain_SearchResponse, { class => 'Paws::CloudSearchDomain::SearchResponse' };
  class_type CloudSearchDomain_SearchStatus, { class => 'Paws::CloudSearchDomain::SearchStatus' };
  class_type CloudSearchDomain_Stats, { class => 'Paws::CloudSearchDomain::Stats' };
  class_type CloudSearchDomain_SuggestionMatch, { class => 'Paws::CloudSearchDomain::SuggestionMatch' };
  class_type CloudSearchDomain_SuggestModel, { class => 'Paws::CloudSearchDomain::SuggestModel' };
  class_type CloudSearchDomain_SuggestRequest, { class => 'Paws::CloudSearchDomain::SuggestRequest' };
  class_type CloudSearchDomain_SuggestResponse, { class => 'Paws::CloudSearchDomain::SuggestResponse' };
  class_type CloudSearchDomain_SuggestStatus, { class => 'Paws::CloudSearchDomain::SuggestStatus' };
  class_type CloudSearchDomain_UploadDocumentsRequest, { class => 'Paws::CloudSearchDomain::UploadDocumentsRequest' };
  class_type CloudSearchDomain_UploadDocumentsResponse, { class => 'Paws::CloudSearchDomain::UploadDocumentsResponse' };

1;
