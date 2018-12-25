package Paws::CloudDirectory;
  use Moose;
  sub service { 'clouddirectory' }
  sub signing_name { 'clouddirectory' }
  sub version { '2017-01-11' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddFacetToObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::AddFacetToObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ApplySchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ApplySchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::AttachObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::AttachPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachToIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::AttachToIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachTypedLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::AttachTypedLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchRead {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::BatchRead', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchWrite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::BatchWrite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::CreateDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFacet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::CreateFacet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::CreateIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::CreateObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::CreateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTypedLinkFacet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::CreateTypedLinkFacet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DeleteDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFacet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DeleteFacet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DeleteObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DeleteSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTypedLinkFacet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DeleteTypedLinkFacet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachFromIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DetachFromIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DetachObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DetachPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachTypedLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DetachTypedLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DisableDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::EnableDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppliedSchemaVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetAppliedSchemaVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFacet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetFacet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLinkAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetLinkAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetObjectAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetObjectInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaAsJson {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetSchemaAsJson', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTypedLinkFacetInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetTypedLinkFacetInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppliedSchemaArns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListAppliedSchemaArns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttachedIndices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListAttachedIndices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevelopmentSchemaArns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListDevelopmentSchemaArns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDirectories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListDirectories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFacetAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListFacetAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFacetNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListFacetNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIncomingTypedLinks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListIncomingTypedLinks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedSchemaArns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListManagedSchemaArns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListObjectAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectChildren {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListObjectChildren', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectParentPaths {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListObjectParentPaths', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectParents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListObjectParents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListObjectPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOutgoingTypedLinks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListOutgoingTypedLinks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicyAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListPolicyAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPublishedSchemaArns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListPublishedSchemaArns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTypedLinkFacetAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListTypedLinkFacetAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTypedLinkFacetNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListTypedLinkFacetNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LookupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::LookupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::PublishSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSchemaFromJson {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::PutSchemaFromJson', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFacetFromObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::RemoveFacetFromObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFacet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UpdateFacet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLinkAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UpdateLinkAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateObjectAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UpdateObjectAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UpdateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTypedLinkFacet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UpdateTypedLinkFacet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpgradeAppliedSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UpgradeAppliedSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpgradePublishedSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UpgradePublishedSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAppliedSchemaArns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAppliedSchemaArns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAppliedSchemaArns(@_, NextToken => $next_result->NextToken);
        push @{ $result->SchemaArns }, @{ $next_result->SchemaArns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SchemaArns') foreach (@{ $result->SchemaArns });
        $result = $self->ListAppliedSchemaArns(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SchemaArns') foreach (@{ $result->SchemaArns });
    }

    return undef
  }
  sub ListAllAttachedIndices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAttachedIndices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAttachedIndices(@_, NextToken => $next_result->NextToken);
        push @{ $result->IndexAttachments }, @{ $next_result->IndexAttachments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IndexAttachments') foreach (@{ $result->IndexAttachments });
        $result = $self->ListAttachedIndices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IndexAttachments') foreach (@{ $result->IndexAttachments });
    }

    return undef
  }
  sub ListAllDevelopmentSchemaArns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevelopmentSchemaArns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDevelopmentSchemaArns(@_, NextToken => $next_result->NextToken);
        push @{ $result->SchemaArns }, @{ $next_result->SchemaArns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SchemaArns') foreach (@{ $result->SchemaArns });
        $result = $self->ListDevelopmentSchemaArns(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SchemaArns') foreach (@{ $result->SchemaArns });
    }

    return undef
  }
  sub ListAllDirectories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDirectories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDirectories(@_, NextToken => $next_result->NextToken);
        push @{ $result->Directories }, @{ $next_result->Directories };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Directories') foreach (@{ $result->Directories });
        $result = $self->ListDirectories(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Directories') foreach (@{ $result->Directories });
    }

    return undef
  }
  sub ListAllFacetAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFacetAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFacetAttributes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Attributes }, @{ $next_result->Attributes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Attributes') foreach (@{ $result->Attributes });
        $result = $self->ListFacetAttributes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Attributes') foreach (@{ $result->Attributes });
    }

    return undef
  }
  sub ListAllFacetNames {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFacetNames(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFacetNames(@_, NextToken => $next_result->NextToken);
        push @{ $result->FacetNames }, @{ $next_result->FacetNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FacetNames') foreach (@{ $result->FacetNames });
        $result = $self->ListFacetNames(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FacetNames') foreach (@{ $result->FacetNames });
    }

    return undef
  }
  sub ListAllIncomingTypedLinks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIncomingTypedLinks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIncomingTypedLinks(@_, NextToken => $next_result->NextToken);
        push @{ $result->LinkSpecifiers }, @{ $next_result->LinkSpecifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LinkSpecifiers') foreach (@{ $result->LinkSpecifiers });
        $result = $self->ListIncomingTypedLinks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LinkSpecifiers') foreach (@{ $result->LinkSpecifiers });
    }

    return undef
  }
  sub ListAllIndex {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIndex(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIndex(@_, NextToken => $next_result->NextToken);
        push @{ $result->IndexAttachments }, @{ $next_result->IndexAttachments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IndexAttachments') foreach (@{ $result->IndexAttachments });
        $result = $self->ListIndex(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IndexAttachments') foreach (@{ $result->IndexAttachments });
    }

    return undef
  }
  sub ListAllManagedSchemaArns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedSchemaArns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListManagedSchemaArns(@_, NextToken => $next_result->NextToken);
        push @{ $result->SchemaArns }, @{ $next_result->SchemaArns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SchemaArns') foreach (@{ $result->SchemaArns });
        $result = $self->ListManagedSchemaArns(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SchemaArns') foreach (@{ $result->SchemaArns });
    }

    return undef
  }
  sub ListAllObjectAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjectAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListObjectAttributes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Attributes }, @{ $next_result->Attributes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Attributes') foreach (@{ $result->Attributes });
        $result = $self->ListObjectAttributes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Attributes') foreach (@{ $result->Attributes });
    }

    return undef
  }
  sub ListAllObjectParentPaths {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjectParentPaths(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListObjectParentPaths(@_, NextToken => $next_result->NextToken);
        push @{ $result->PathToObjectIdentifiersList }, @{ $next_result->PathToObjectIdentifiersList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PathToObjectIdentifiersList') foreach (@{ $result->PathToObjectIdentifiersList });
        $result = $self->ListObjectParentPaths(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PathToObjectIdentifiersList') foreach (@{ $result->PathToObjectIdentifiersList });
    }

    return undef
  }
  sub ListAllObjectPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjectPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListObjectPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->AttachedPolicyIds }, @{ $next_result->AttachedPolicyIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AttachedPolicyIds') foreach (@{ $result->AttachedPolicyIds });
        $result = $self->ListObjectPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AttachedPolicyIds') foreach (@{ $result->AttachedPolicyIds });
    }

    return undef
  }
  sub ListAllOutgoingTypedLinks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOutgoingTypedLinks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOutgoingTypedLinks(@_, NextToken => $next_result->NextToken);
        push @{ $result->TypedLinkSpecifiers }, @{ $next_result->TypedLinkSpecifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TypedLinkSpecifiers') foreach (@{ $result->TypedLinkSpecifiers });
        $result = $self->ListOutgoingTypedLinks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TypedLinkSpecifiers') foreach (@{ $result->TypedLinkSpecifiers });
    }

    return undef
  }
  sub ListAllPolicyAttachments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicyAttachments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPolicyAttachments(@_, NextToken => $next_result->NextToken);
        push @{ $result->ObjectIdentifiers }, @{ $next_result->ObjectIdentifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ObjectIdentifiers') foreach (@{ $result->ObjectIdentifiers });
        $result = $self->ListPolicyAttachments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ObjectIdentifiers') foreach (@{ $result->ObjectIdentifiers });
    }

    return undef
  }
  sub ListAllPublishedSchemaArns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPublishedSchemaArns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPublishedSchemaArns(@_, NextToken => $next_result->NextToken);
        push @{ $result->SchemaArns }, @{ $next_result->SchemaArns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SchemaArns') foreach (@{ $result->SchemaArns });
        $result = $self->ListPublishedSchemaArns(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SchemaArns') foreach (@{ $result->SchemaArns });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub ListAllTypedLinkFacetAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTypedLinkFacetAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTypedLinkFacetAttributes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Attributes }, @{ $next_result->Attributes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Attributes') foreach (@{ $result->Attributes });
        $result = $self->ListTypedLinkFacetAttributes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Attributes') foreach (@{ $result->Attributes });
    }

    return undef
  }
  sub ListAllTypedLinkFacetNames {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTypedLinkFacetNames(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTypedLinkFacetNames(@_, NextToken => $next_result->NextToken);
        push @{ $result->FacetNames }, @{ $next_result->FacetNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FacetNames') foreach (@{ $result->FacetNames });
        $result = $self->ListTypedLinkFacetNames(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FacetNames') foreach (@{ $result->FacetNames });
    }

    return undef
  }
  sub LookupAllPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->LookupPolicy(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->LookupPolicy(@_, NextToken => $next_result->NextToken);
        push @{ $result->PolicyToPathList }, @{ $next_result->PolicyToPathList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PolicyToPathList') foreach (@{ $result->PolicyToPathList });
        $result = $self->LookupPolicy(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PolicyToPathList') foreach (@{ $result->PolicyToPathList });
    }

    return undef
  }


  sub operations { qw/AddFacetToObject ApplySchema AttachObject AttachPolicy AttachToIndex AttachTypedLink BatchRead BatchWrite CreateDirectory CreateFacet CreateIndex CreateObject CreateSchema CreateTypedLinkFacet DeleteDirectory DeleteFacet DeleteObject DeleteSchema DeleteTypedLinkFacet DetachFromIndex DetachObject DetachPolicy DetachTypedLink DisableDirectory EnableDirectory GetAppliedSchemaVersion GetDirectory GetFacet GetLinkAttributes GetObjectAttributes GetObjectInformation GetSchemaAsJson GetTypedLinkFacetInformation ListAppliedSchemaArns ListAttachedIndices ListDevelopmentSchemaArns ListDirectories ListFacetAttributes ListFacetNames ListIncomingTypedLinks ListIndex ListManagedSchemaArns ListObjectAttributes ListObjectChildren ListObjectParentPaths ListObjectParents ListObjectPolicies ListOutgoingTypedLinks ListPolicyAttachments ListPublishedSchemaArns ListTagsForResource ListTypedLinkFacetAttributes ListTypedLinkFacetNames LookupPolicy PublishSchema PutSchemaFromJson RemoveFacetFromObject TagResource UntagResource UpdateFacet UpdateLinkAttributes UpdateObjectAttributes UpdateSchema UpdateTypedLinkFacet UpgradeAppliedSchema UpgradePublishedSchema / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory - Perl Interface to AWS Amazon CloudDirectory

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudDirectory');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Cloud Directory

Amazon Cloud Directory is a component of the AWS Directory Service that
simplifies the development and management of cloud-scale web, mobile,
and IoT applications. This guide describes the Cloud Directory
operations that you can call programmatically and includes detailed
information on data types and errors. For information about Cloud
Directory features, see AWS Directory Service
(https://aws.amazon.com/directoryservice/) and the Amazon Cloud
Directory Developer Guide
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/directory-service/>


=head1 METHODS

=head2 AddFacetToObject

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item SchemaFacet => L<Paws::CloudDirectory::SchemaFacet>

=item [ObjectAttributeList => ArrayRef[L<Paws::CloudDirectory::AttributeKeyAndValue>]]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::AddFacetToObject>

Returns: a L<Paws::CloudDirectory::AddFacetToObjectResponse> instance

Adds a new Facet to an object. An object can have more than one facet
applied on it.


=head2 ApplySchema

=over

=item DirectoryArn => Str

=item PublishedSchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ApplySchema>

Returns: a L<Paws::CloudDirectory::ApplySchemaResponse> instance

Copies the input published schema, at the specified version, into the
Directory with the same name and version as that of the published
schema.


=head2 AttachObject

=over

=item ChildReference => L<Paws::CloudDirectory::ObjectReference>

=item DirectoryArn => Str

=item LinkName => Str

=item ParentReference => L<Paws::CloudDirectory::ObjectReference>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::AttachObject>

Returns: a L<Paws::CloudDirectory::AttachObjectResponse> instance

Attaches an existing object to another object. An object can be
accessed in two ways:

=over

=item 1.

Using the path

=item 2.

Using C<ObjectIdentifier>

=back



=head2 AttachPolicy

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item PolicyReference => L<Paws::CloudDirectory::ObjectReference>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::AttachPolicy>

Returns: a L<Paws::CloudDirectory::AttachPolicyResponse> instance

Attaches a policy object to a regular object. An object can have a
limited number of attached policies.


=head2 AttachToIndex

=over

=item DirectoryArn => Str

=item IndexReference => L<Paws::CloudDirectory::ObjectReference>

=item TargetReference => L<Paws::CloudDirectory::ObjectReference>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::AttachToIndex>

Returns: a L<Paws::CloudDirectory::AttachToIndexResponse> instance

Attaches the specified object to the specified index.


=head2 AttachTypedLink

=over

=item Attributes => ArrayRef[L<Paws::CloudDirectory::AttributeNameAndValue>]

=item DirectoryArn => Str

=item SourceObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item TargetObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item TypedLinkFacet => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::AttachTypedLink>

Returns: a L<Paws::CloudDirectory::AttachTypedLinkResponse> instance

Attaches a typed link to a specified source and target object. For more
information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 BatchRead

=over

=item DirectoryArn => Str

=item Operations => ArrayRef[L<Paws::CloudDirectory::BatchReadOperation>]

=item [ConsistencyLevel => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::BatchRead>

Returns: a L<Paws::CloudDirectory::BatchReadResponse> instance

Performs all the read operations in a batch.


=head2 BatchWrite

=over

=item DirectoryArn => Str

=item Operations => ArrayRef[L<Paws::CloudDirectory::BatchWriteOperation>]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::BatchWrite>

Returns: a L<Paws::CloudDirectory::BatchWriteResponse> instance

Performs all the write operations in a batch. Either all the operations
succeed or none.


=head2 CreateDirectory

=over

=item Name => Str

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::CreateDirectory>

Returns: a L<Paws::CloudDirectory::CreateDirectoryResponse> instance

Creates a Directory by copying the published schema into the directory.
A directory cannot be created without a schema.

You can also quickly create a directory using a managed schema, called
the C<QuickStartSchema>. For more information, see Managed Schema
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_managed.html)
in the I<Amazon Cloud Directory Developer Guide>.


=head2 CreateFacet

=over

=item Name => Str

=item SchemaArn => Str

=item [Attributes => ArrayRef[L<Paws::CloudDirectory::FacetAttribute>]]

=item [FacetStyle => Str]

=item [ObjectType => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::CreateFacet>

Returns: a L<Paws::CloudDirectory::CreateFacetResponse> instance

Creates a new Facet in a schema. Facet creation is allowed only in
development or applied schemas.


=head2 CreateIndex

=over

=item DirectoryArn => Str

=item IsUnique => Bool

=item OrderedIndexedAttributeList => ArrayRef[L<Paws::CloudDirectory::AttributeKey>]

=item [LinkName => Str]

=item [ParentReference => L<Paws::CloudDirectory::ObjectReference>]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::CreateIndex>

Returns: a L<Paws::CloudDirectory::CreateIndexResponse> instance

Creates an index object. See Indexing and search
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.html)
for more information.


=head2 CreateObject

=over

=item DirectoryArn => Str

=item SchemaFacets => ArrayRef[L<Paws::CloudDirectory::SchemaFacet>]

=item [LinkName => Str]

=item [ObjectAttributeList => ArrayRef[L<Paws::CloudDirectory::AttributeKeyAndValue>]]

=item [ParentReference => L<Paws::CloudDirectory::ObjectReference>]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::CreateObject>

Returns: a L<Paws::CloudDirectory::CreateObjectResponse> instance

Creates an object in a Directory. Additionally attaches the object to a
parent, if a parent reference and C<LinkName> is specified. An object
is simply a collection of Facet attributes. You can also use this API
call to create a policy object, if the facet from which you create the
object is a policy facet.


=head2 CreateSchema

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::CreateSchema>

Returns: a L<Paws::CloudDirectory::CreateSchemaResponse> instance

Creates a new schema in a development state. A schema can exist in
three phases:

=over

=item *

I<Development:> This is a mutable phase of the schema. All new schemas
are in the development phase. Once the schema is finalized, it can be
published.

=item *

I<Published:> Published schemas are immutable and have a version
associated with them.

=item *

I<Applied:> Applied schemas are mutable in a way that allows you to add
new schema facets. You can also add new, nonrequired attributes to
existing schema facets. You can apply only published schemas to
directories.

=back



=head2 CreateTypedLinkFacet

=over

=item Facet => L<Paws::CloudDirectory::TypedLinkFacet>

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::CreateTypedLinkFacet>

Returns: a L<Paws::CloudDirectory::CreateTypedLinkFacetResponse> instance

Creates a TypedLinkFacet. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 DeleteDirectory

=over

=item DirectoryArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::DeleteDirectory>

Returns: a L<Paws::CloudDirectory::DeleteDirectoryResponse> instance

Deletes a directory. Only disabled directories can be deleted. A
deleted directory cannot be undone. Exercise extreme caution when
deleting directories.


=head2 DeleteFacet

=over

=item Name => Str

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::DeleteFacet>

Returns: a L<Paws::CloudDirectory::DeleteFacetResponse> instance

Deletes a given Facet. All attributes and Rules that are associated
with the facet will be deleted. Only development schema facets are
allowed deletion.


=head2 DeleteObject

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::DeleteObject>

Returns: a L<Paws::CloudDirectory::DeleteObjectResponse> instance

Deletes an object and its associated attributes. Only objects with no
children and no parents can be deleted. The maximum number of
attributes that can be deleted during an object deletion is 30. For
more information, see Amazon Cloud Directory Limits
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html).


=head2 DeleteSchema

=over

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::DeleteSchema>

Returns: a L<Paws::CloudDirectory::DeleteSchemaResponse> instance

Deletes a given schema. Schemas in a development and published state
can only be deleted.


=head2 DeleteTypedLinkFacet

=over

=item Name => Str

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::DeleteTypedLinkFacet>

Returns: a L<Paws::CloudDirectory::DeleteTypedLinkFacetResponse> instance

Deletes a TypedLinkFacet. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 DetachFromIndex

=over

=item DirectoryArn => Str

=item IndexReference => L<Paws::CloudDirectory::ObjectReference>

=item TargetReference => L<Paws::CloudDirectory::ObjectReference>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::DetachFromIndex>

Returns: a L<Paws::CloudDirectory::DetachFromIndexResponse> instance

Detaches the specified object from the specified index.


=head2 DetachObject

=over

=item DirectoryArn => Str

=item LinkName => Str

=item ParentReference => L<Paws::CloudDirectory::ObjectReference>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::DetachObject>

Returns: a L<Paws::CloudDirectory::DetachObjectResponse> instance

Detaches a given object from the parent object. The object that is to
be detached from the parent is specified by the link name.


=head2 DetachPolicy

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item PolicyReference => L<Paws::CloudDirectory::ObjectReference>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::DetachPolicy>

Returns: a L<Paws::CloudDirectory::DetachPolicyResponse> instance

Detaches a policy from an object.


=head2 DetachTypedLink

=over

=item DirectoryArn => Str

=item TypedLinkSpecifier => L<Paws::CloudDirectory::TypedLinkSpecifier>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::DetachTypedLink>

Returns: nothing

Detaches a typed link from a specified source and target object. For
more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 DisableDirectory

=over

=item DirectoryArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::DisableDirectory>

Returns: a L<Paws::CloudDirectory::DisableDirectoryResponse> instance

Disables the specified directory. Disabled directories cannot be read
or written to. Only enabled directories can be disabled. Disabled
directories may be reenabled.


=head2 EnableDirectory

=over

=item DirectoryArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::EnableDirectory>

Returns: a L<Paws::CloudDirectory::EnableDirectoryResponse> instance

Enables the specified directory. Only disabled directories can be
enabled. Once enabled, the directory can then be read and written to.


=head2 GetAppliedSchemaVersion

=over

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::GetAppliedSchemaVersion>

Returns: a L<Paws::CloudDirectory::GetAppliedSchemaVersionResponse> instance

Returns current applied schema version ARN, including the minor version
in use.


=head2 GetDirectory

=over

=item DirectoryArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::GetDirectory>

Returns: a L<Paws::CloudDirectory::GetDirectoryResponse> instance

Retrieves metadata about a directory.


=head2 GetFacet

=over

=item Name => Str

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::GetFacet>

Returns: a L<Paws::CloudDirectory::GetFacetResponse> instance

Gets details of the Facet, such as facet name, attributes, Rules, or
C<ObjectType>. You can call this on all kinds of schema facets --
published, development, or applied.


=head2 GetLinkAttributes

=over

=item AttributeNames => ArrayRef[Str|Undef]

=item DirectoryArn => Str

=item TypedLinkSpecifier => L<Paws::CloudDirectory::TypedLinkSpecifier>

=item [ConsistencyLevel => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::GetLinkAttributes>

Returns: a L<Paws::CloudDirectory::GetLinkAttributesResponse> instance

Retrieves attributes that are associated with a typed link.


=head2 GetObjectAttributes

=over

=item AttributeNames => ArrayRef[Str|Undef]

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item SchemaFacet => L<Paws::CloudDirectory::SchemaFacet>

=item [ConsistencyLevel => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::GetObjectAttributes>

Returns: a L<Paws::CloudDirectory::GetObjectAttributesResponse> instance

Retrieves attributes within a facet that are associated with an object.


=head2 GetObjectInformation

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item [ConsistencyLevel => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::GetObjectInformation>

Returns: a L<Paws::CloudDirectory::GetObjectInformationResponse> instance

Retrieves metadata about an object.


=head2 GetSchemaAsJson

=over

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::GetSchemaAsJson>

Returns: a L<Paws::CloudDirectory::GetSchemaAsJsonResponse> instance

Retrieves a JSON representation of the schema. See JSON Schema Format
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json)
for more information.


=head2 GetTypedLinkFacetInformation

=over

=item Name => Str

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::GetTypedLinkFacetInformation>

Returns: a L<Paws::CloudDirectory::GetTypedLinkFacetInformationResponse> instance

Returns the identity attribute order for a specific TypedLinkFacet. For
more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 ListAppliedSchemaArns

=over

=item DirectoryArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SchemaArn => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListAppliedSchemaArns>

Returns: a L<Paws::CloudDirectory::ListAppliedSchemaArnsResponse> instance

Lists schema major versions applied to a directory. If C<SchemaArn> is
provided, lists the minor version.


=head2 ListAttachedIndices

=over

=item DirectoryArn => Str

=item TargetReference => L<Paws::CloudDirectory::ObjectReference>

=item [ConsistencyLevel => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListAttachedIndices>

Returns: a L<Paws::CloudDirectory::ListAttachedIndicesResponse> instance

Lists indices attached to the specified object.


=head2 ListDevelopmentSchemaArns

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListDevelopmentSchemaArns>

Returns: a L<Paws::CloudDirectory::ListDevelopmentSchemaArnsResponse> instance

Retrieves each Amazon Resource Name (ARN) of schemas in the development
state.


=head2 ListDirectories

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListDirectories>

Returns: a L<Paws::CloudDirectory::ListDirectoriesResponse> instance

Lists directories created within an account.


=head2 ListFacetAttributes

=over

=item Name => Str

=item SchemaArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListFacetAttributes>

Returns: a L<Paws::CloudDirectory::ListFacetAttributesResponse> instance

Retrieves attributes attached to the facet.


=head2 ListFacetNames

=over

=item SchemaArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListFacetNames>

Returns: a L<Paws::CloudDirectory::ListFacetNamesResponse> instance

Retrieves the names of facets that exist in a schema.


=head2 ListIncomingTypedLinks

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item [ConsistencyLevel => Str]

=item [FilterAttributeRanges => ArrayRef[L<Paws::CloudDirectory::TypedLinkAttributeRange>]]

=item [FilterTypedLink => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListIncomingTypedLinks>

Returns: a L<Paws::CloudDirectory::ListIncomingTypedLinksResponse> instance

Returns a paginated list of all the incoming TypedLinkSpecifier
information for an object. It also supports filtering by typed link
facet and identity attributes. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 ListIndex

=over

=item DirectoryArn => Str

=item IndexReference => L<Paws::CloudDirectory::ObjectReference>

=item [ConsistencyLevel => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RangesOnIndexedValues => ArrayRef[L<Paws::CloudDirectory::ObjectAttributeRange>]]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListIndex>

Returns: a L<Paws::CloudDirectory::ListIndexResponse> instance

Lists objects attached to the specified index.


=head2 ListManagedSchemaArns

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SchemaArn => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListManagedSchemaArns>

Returns: a L<Paws::CloudDirectory::ListManagedSchemaArnsResponse> instance

Lists the major version families of each managed schema. If a major
version ARN is provided as SchemaArn, the minor version revisions in
that family are listed instead.


=head2 ListObjectAttributes

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item [ConsistencyLevel => Str]

=item [FacetFilter => L<Paws::CloudDirectory::SchemaFacet>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListObjectAttributes>

Returns: a L<Paws::CloudDirectory::ListObjectAttributesResponse> instance

Lists all attributes that are associated with an object.


=head2 ListObjectChildren

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item [ConsistencyLevel => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListObjectChildren>

Returns: a L<Paws::CloudDirectory::ListObjectChildrenResponse> instance

Returns a paginated list of child objects that are associated with a
given object.


=head2 ListObjectParentPaths

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListObjectParentPaths>

Returns: a L<Paws::CloudDirectory::ListObjectParentPathsResponse> instance

Retrieves all available parent paths for any object type such as node,
leaf node, policy node, and index node objects. For more information
about objects, see Directory Structure
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html).

Use this API to evaluate all parents for an object. The call returns
all objects from the root of the directory up to the requested object.
The API returns the number of paths based on user-defined
C<MaxResults>, in case there are multiple paths to the parent. The
order of the paths and nodes returned is consistent among multiple API
calls unless the objects are deleted or moved. Paths not leading to the
directory root are ignored from the target object.


=head2 ListObjectParents

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item [ConsistencyLevel => Str]

=item [IncludeAllLinksToEachParent => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListObjectParents>

Returns: a L<Paws::CloudDirectory::ListObjectParentsResponse> instance

Lists parent objects that are associated with a given object in
pagination fashion.


=head2 ListObjectPolicies

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item [ConsistencyLevel => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListObjectPolicies>

Returns: a L<Paws::CloudDirectory::ListObjectPoliciesResponse> instance

Returns policies attached to an object in pagination fashion.


=head2 ListOutgoingTypedLinks

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item [ConsistencyLevel => Str]

=item [FilterAttributeRanges => ArrayRef[L<Paws::CloudDirectory::TypedLinkAttributeRange>]]

=item [FilterTypedLink => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListOutgoingTypedLinks>

Returns: a L<Paws::CloudDirectory::ListOutgoingTypedLinksResponse> instance

Returns a paginated list of all the outgoing TypedLinkSpecifier
information for an object. It also supports filtering by typed link
facet and identity attributes. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 ListPolicyAttachments

=over

=item DirectoryArn => Str

=item PolicyReference => L<Paws::CloudDirectory::ObjectReference>

=item [ConsistencyLevel => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListPolicyAttachments>

Returns: a L<Paws::CloudDirectory::ListPolicyAttachmentsResponse> instance

Returns all of the C<ObjectIdentifiers> to which a given policy is
attached.


=head2 ListPublishedSchemaArns

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SchemaArn => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListPublishedSchemaArns>

Returns: a L<Paws::CloudDirectory::ListPublishedSchemaArnsResponse> instance

Lists the major version families of each published schema. If a major
version ARN is provided as C<SchemaArn>, the minor version revisions in
that family are listed instead.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListTagsForResource>

Returns: a L<Paws::CloudDirectory::ListTagsForResourceResponse> instance

Returns tags for a resource. Tagging is currently supported only for
directories with a limit of 50 tags per directory. All 50 tags are
returned for a given directory with this API call.


=head2 ListTypedLinkFacetAttributes

=over

=item Name => Str

=item SchemaArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListTypedLinkFacetAttributes>

Returns: a L<Paws::CloudDirectory::ListTypedLinkFacetAttributesResponse> instance

Returns a paginated list of all attribute definitions for a particular
TypedLinkFacet. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 ListTypedLinkFacetNames

=over

=item SchemaArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::ListTypedLinkFacetNames>

Returns: a L<Paws::CloudDirectory::ListTypedLinkFacetNamesResponse> instance

Returns a paginated list of C<TypedLink> facet names for a particular
schema. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 LookupPolicy

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::LookupPolicy>

Returns: a L<Paws::CloudDirectory::LookupPolicyResponse> instance

Lists all policies from the root of the Directory to the object
specified. If there are no policies present, an empty list is returned.
If policies are present, and if some objects don't have the policies
attached, it returns the C<ObjectIdentifier> for such objects. If
policies are present, it returns C<ObjectIdentifier>, C<policyId>, and
C<policyType>. Paths that don't lead to the root from the target object
are ignored. For more information, see Policies
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).


=head2 PublishSchema

=over

=item DevelopmentSchemaArn => Str

=item Version => Str

=item [MinorVersion => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::PublishSchema>

Returns: a L<Paws::CloudDirectory::PublishSchemaResponse> instance

Publishes a development schema with a major version and a recommended
minor version.


=head2 PutSchemaFromJson

=over

=item Document => Str

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::PutSchemaFromJson>

Returns: a L<Paws::CloudDirectory::PutSchemaFromJsonResponse> instance

Allows a schema to be updated using JSON upload. Only available for
development schemas. See JSON Schema Format
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json)
for more information.


=head2 RemoveFacetFromObject

=over

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>

=item SchemaFacet => L<Paws::CloudDirectory::SchemaFacet>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::RemoveFacetFromObject>

Returns: a L<Paws::CloudDirectory::RemoveFacetFromObjectResponse> instance

Removes the specified facet from the specified object.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::CloudDirectory::Tag>]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::TagResource>

Returns: a L<Paws::CloudDirectory::TagResourceResponse> instance

An API operation for adding tags to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::UntagResource>

Returns: a L<Paws::CloudDirectory::UntagResourceResponse> instance

An API operation for removing tags from a resource.


=head2 UpdateFacet

=over

=item Name => Str

=item SchemaArn => Str

=item [AttributeUpdates => ArrayRef[L<Paws::CloudDirectory::FacetAttributeUpdate>]]

=item [ObjectType => Str]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::UpdateFacet>

Returns: a L<Paws::CloudDirectory::UpdateFacetResponse> instance

Does the following:

=over

=item 1.

Adds new C<Attributes>, C<Rules>, or C<ObjectTypes>.

=item 2.

Updates existing C<Attributes>, C<Rules>, or C<ObjectTypes>.

=item 3.

Deletes existing C<Attributes>, C<Rules>, or C<ObjectTypes>.

=back



=head2 UpdateLinkAttributes

=over

=item AttributeUpdates => ArrayRef[L<Paws::CloudDirectory::LinkAttributeUpdate>]

=item DirectoryArn => Str

=item TypedLinkSpecifier => L<Paws::CloudDirectory::TypedLinkSpecifier>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::UpdateLinkAttributes>

Returns: a L<Paws::CloudDirectory::UpdateLinkAttributesResponse> instance

Updates a given typed linkE<rsquo>s attributes. Attributes to be
updated must not contribute to the typed linkE<rsquo>s identity, as
defined by its C<IdentityAttributeOrder>.


=head2 UpdateObjectAttributes

=over

=item AttributeUpdates => ArrayRef[L<Paws::CloudDirectory::ObjectAttributeUpdate>]

=item DirectoryArn => Str

=item ObjectReference => L<Paws::CloudDirectory::ObjectReference>


=back

Each argument is described in detail in: L<Paws::CloudDirectory::UpdateObjectAttributes>

Returns: a L<Paws::CloudDirectory::UpdateObjectAttributesResponse> instance

Updates a given object's attributes.


=head2 UpdateSchema

=over

=item Name => Str

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::UpdateSchema>

Returns: a L<Paws::CloudDirectory::UpdateSchemaResponse> instance

Updates the schema name with a new name. Only development schema names
can be updated.


=head2 UpdateTypedLinkFacet

=over

=item AttributeUpdates => ArrayRef[L<Paws::CloudDirectory::TypedLinkFacetAttributeUpdate>]

=item IdentityAttributeOrder => ArrayRef[Str|Undef]

=item Name => Str

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::CloudDirectory::UpdateTypedLinkFacet>

Returns: a L<Paws::CloudDirectory::UpdateTypedLinkFacetResponse> instance

Updates a TypedLinkFacet. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 UpgradeAppliedSchema

=over

=item DirectoryArn => Str

=item PublishedSchemaArn => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::UpgradeAppliedSchema>

Returns: a L<Paws::CloudDirectory::UpgradeAppliedSchemaResponse> instance

Upgrades a single directory in-place using the C<PublishedSchemaArn>
with schema updates found in C<MinorVersion>. Backwards-compatible
minor version upgrades are instantaneously available for readers on all
objects in the directory. Note: This is a synchronous API call and
upgrades only one schema on a given directory per call. To upgrade
multiple directories from one schema, you would need to call this API
on each directory.


=head2 UpgradePublishedSchema

=over

=item DevelopmentSchemaArn => Str

=item MinorVersion => Str

=item PublishedSchemaArn => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::CloudDirectory::UpgradePublishedSchema>

Returns: a L<Paws::CloudDirectory::UpgradePublishedSchemaResponse> instance

Upgrades a published schema under a new minor version revision using
the current contents of C<DevelopmentSchemaArn>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAppliedSchemaArns(sub { },DirectoryArn => Str, [MaxResults => Int, NextToken => Str, SchemaArn => Str])

=head2 ListAllAppliedSchemaArns(DirectoryArn => Str, [MaxResults => Int, NextToken => Str, SchemaArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SchemaArns, passing the object as the first parameter, and the string 'SchemaArns' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListAppliedSchemaArnsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAttachedIndices(sub { },DirectoryArn => Str, TargetReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAttachedIndices(DirectoryArn => Str, TargetReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IndexAttachments, passing the object as the first parameter, and the string 'IndexAttachments' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListAttachedIndicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDevelopmentSchemaArns(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDevelopmentSchemaArns([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SchemaArns, passing the object as the first parameter, and the string 'SchemaArns' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListDevelopmentSchemaArnsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDirectories(sub { },[MaxResults => Int, NextToken => Str, State => Str])

=head2 ListAllDirectories([MaxResults => Int, NextToken => Str, State => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Directories, passing the object as the first parameter, and the string 'Directories' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListDirectoriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFacetAttributes(sub { },Name => Str, SchemaArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFacetAttributes(Name => Str, SchemaArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Attributes, passing the object as the first parameter, and the string 'Attributes' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListFacetAttributesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFacetNames(sub { },SchemaArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFacetNames(SchemaArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FacetNames, passing the object as the first parameter, and the string 'FacetNames' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListFacetNamesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIncomingTypedLinks(sub { },DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, FilterAttributeRanges => ArrayRef[L<Paws::CloudDirectory::TypedLinkAttributeRange>], FilterTypedLink => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>, MaxResults => Int, NextToken => Str])

=head2 ListAllIncomingTypedLinks(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, FilterAttributeRanges => ArrayRef[L<Paws::CloudDirectory::TypedLinkAttributeRange>], FilterTypedLink => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LinkSpecifiers, passing the object as the first parameter, and the string 'LinkSpecifiers' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListIncomingTypedLinksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIndex(sub { },DirectoryArn => Str, IndexReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str, RangesOnIndexedValues => ArrayRef[L<Paws::CloudDirectory::ObjectAttributeRange>]])

=head2 ListAllIndex(DirectoryArn => Str, IndexReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str, RangesOnIndexedValues => ArrayRef[L<Paws::CloudDirectory::ObjectAttributeRange>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IndexAttachments, passing the object as the first parameter, and the string 'IndexAttachments' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListIndexResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedSchemaArns(sub { },[MaxResults => Int, NextToken => Str, SchemaArn => Str])

=head2 ListAllManagedSchemaArns([MaxResults => Int, NextToken => Str, SchemaArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SchemaArns, passing the object as the first parameter, and the string 'SchemaArns' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListManagedSchemaArnsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjectAttributes(sub { },DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, FacetFilter => L<Paws::CloudDirectory::SchemaFacet>, MaxResults => Int, NextToken => Str])

=head2 ListAllObjectAttributes(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, FacetFilter => L<Paws::CloudDirectory::SchemaFacet>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Attributes, passing the object as the first parameter, and the string 'Attributes' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListObjectAttributesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjectParentPaths(sub { },DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [MaxResults => Int, NextToken => Str])

=head2 ListAllObjectParentPaths(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PathToObjectIdentifiersList, passing the object as the first parameter, and the string 'PathToObjectIdentifiersList' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListObjectParentPathsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjectPolicies(sub { },DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllObjectPolicies(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AttachedPolicyIds, passing the object as the first parameter, and the string 'AttachedPolicyIds' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListObjectPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOutgoingTypedLinks(sub { },DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, FilterAttributeRanges => ArrayRef[L<Paws::CloudDirectory::TypedLinkAttributeRange>], FilterTypedLink => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>, MaxResults => Int, NextToken => Str])

=head2 ListAllOutgoingTypedLinks(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, FilterAttributeRanges => ArrayRef[L<Paws::CloudDirectory::TypedLinkAttributeRange>], FilterTypedLink => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TypedLinkSpecifiers, passing the object as the first parameter, and the string 'TypedLinkSpecifiers' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListOutgoingTypedLinksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicyAttachments(sub { },DirectoryArn => Str, PolicyReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllPolicyAttachments(DirectoryArn => Str, PolicyReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ObjectIdentifiers, passing the object as the first parameter, and the string 'ObjectIdentifiers' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListPolicyAttachmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPublishedSchemaArns(sub { },[MaxResults => Int, NextToken => Str, SchemaArn => Str])

=head2 ListAllPublishedSchemaArns([MaxResults => Int, NextToken => Str, SchemaArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SchemaArns, passing the object as the first parameter, and the string 'SchemaArns' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListPublishedSchemaArnsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTypedLinkFacetAttributes(sub { },Name => Str, SchemaArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTypedLinkFacetAttributes(Name => Str, SchemaArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Attributes, passing the object as the first parameter, and the string 'Attributes' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListTypedLinkFacetAttributesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTypedLinkFacetNames(sub { },SchemaArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTypedLinkFacetNames(SchemaArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FacetNames, passing the object as the first parameter, and the string 'FacetNames' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::ListTypedLinkFacetNamesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 LookupAllPolicies(sub { },DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [MaxResults => Int, NextToken => Str])

=head2 LookupAllPolicies(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PolicyToPathList, passing the object as the first parameter, and the string 'PolicyToPathList' as the second parameter 

If not, it will return a a L<Paws::CloudDirectory::LookupPolicyResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

