package Paws::Macie::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type Macie_AccessDeniedException, { class => 'Paws::Macie::AccessDeniedException' };
  class_type Macie_AssociateMemberAccountRequest, { class => 'Paws::Macie::AssociateMemberAccountRequest' };
  class_type Macie_AssociateS3ResourcesRequest, { class => 'Paws::Macie::AssociateS3ResourcesRequest' };
  class_type Macie_AssociateS3ResourcesResult, { class => 'Paws::Macie::AssociateS3ResourcesResult' };
  class_type Macie_ClassificationType, { class => 'Paws::Macie::ClassificationType' };
  class_type Macie_ClassificationTypeUpdate, { class => 'Paws::Macie::ClassificationTypeUpdate' };
  class_type Macie_DisassociateMemberAccountRequest, { class => 'Paws::Macie::DisassociateMemberAccountRequest' };
  class_type Macie_DisassociateS3ResourcesRequest, { class => 'Paws::Macie::DisassociateS3ResourcesRequest' };
  class_type Macie_DisassociateS3ResourcesResult, { class => 'Paws::Macie::DisassociateS3ResourcesResult' };
  class_type Macie_FailedS3Resource, { class => 'Paws::Macie::FailedS3Resource' };
  class_type Macie_InternalException, { class => 'Paws::Macie::InternalException' };
  class_type Macie_InvalidInputException, { class => 'Paws::Macie::InvalidInputException' };
  class_type Macie_LimitExceededException, { class => 'Paws::Macie::LimitExceededException' };
  class_type Macie_ListMemberAccountsRequest, { class => 'Paws::Macie::ListMemberAccountsRequest' };
  class_type Macie_ListMemberAccountsResult, { class => 'Paws::Macie::ListMemberAccountsResult' };
  class_type Macie_ListS3ResourcesRequest, { class => 'Paws::Macie::ListS3ResourcesRequest' };
  class_type Macie_ListS3ResourcesResult, { class => 'Paws::Macie::ListS3ResourcesResult' };
  class_type Macie_MemberAccount, { class => 'Paws::Macie::MemberAccount' };
  class_type Macie_S3Resource, { class => 'Paws::Macie::S3Resource' };
  class_type Macie_S3ResourceClassification, { class => 'Paws::Macie::S3ResourceClassification' };
  class_type Macie_S3ResourceClassificationUpdate, { class => 'Paws::Macie::S3ResourceClassificationUpdate' };
  class_type Macie_UpdateS3ResourcesRequest, { class => 'Paws::Macie::UpdateS3ResourcesRequest' };
  class_type Macie_UpdateS3ResourcesResult, { class => 'Paws::Macie::UpdateS3ResourcesResult' };

1;
