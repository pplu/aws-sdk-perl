package Paws::RAM;
  use Moose;
  sub service { 'ram' }
  sub signing_name { 'ram' }
  sub version { '2018-01-04' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptResourceShareInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::AcceptResourceShareInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::AssociateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::CreateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::DeleteResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::DisassociateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSharingWithAwsOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::EnableSharingWithAwsOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourcePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceShareAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourceShareAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceShareInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourceShareInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourceShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrincipals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListPrincipals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectResourceShareInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::RejectResourceShareInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::UpdateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AcceptResourceShareInvitation AssociateResourceShare CreateResourceShare DeleteResourceShare DisassociateResourceShare EnableSharingWithAwsOrganization GetResourcePolicies GetResourceShareAssociations GetResourceShareInvitations GetResourceShares ListPrincipals ListResources RejectResourceShareInvitation TagResource UntagResource UpdateResourceShare / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM - Perl Interface to AWS AWS Resource Access Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('RAM');
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

Use AWS Resource Access Manager to share AWS resources between AWS
accounts. To share a resource, you create a resource share, associate
the resource with the resource share, and specify the principals that
can access the resource. The following principals are supported:

=over

=item *

The ID of an AWS account

=item *

The Amazon Resource Name (ARN) of an OU from AWS Organizations

=item *

The Amazon Resource Name (ARN) of an organization from AWS
Organizations

=back

If you specify an AWS account that doesn't exist in the same
organization as the account that owns the resource share, the owner of
the specified account receives an invitation to accept the resource
share. After the owner accepts the invitation, they can access the
resources in the resource share. An administrator of the specified
account can use IAM policies to restrict access resources in the
resource share.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04>


=head1 METHODS

=head2 AcceptResourceShareInvitation

=over

=item ResourceShareInvitationArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::AcceptResourceShareInvitation>

Returns: a L<Paws::RAM::AcceptResourceShareInvitationResponse> instance

Accepts an invitation to a resource share from another AWS account.


=head2 AssociateResourceShare

=over

=item ResourceShareArn => Str

=item [ClientToken => Str]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::AssociateResourceShare>

Returns: a L<Paws::RAM::AssociateResourceShareResponse> instance

Associates the specified resource share with the specified principals
and resources.


=head2 CreateResourceShare

=over

=item Name => Str

=item [AllowExternalPrincipals => Bool]

=item [ClientToken => Str]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArns => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::RAM::Tag>]]


=back

Each argument is described in detail in: L<Paws::RAM::CreateResourceShare>

Returns: a L<Paws::RAM::CreateResourceShareResponse> instance

Creates a resource share.


=head2 DeleteResourceShare

=over

=item ResourceShareArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::DeleteResourceShare>

Returns: a L<Paws::RAM::DeleteResourceShareResponse> instance

Deletes the specified resource share.


=head2 DisassociateResourceShare

=over

=item ResourceShareArn => Str

=item [ClientToken => Str]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::DisassociateResourceShare>

Returns: a L<Paws::RAM::DisassociateResourceShareResponse> instance

Disassociates the specified principals or resources from the specified
resource share.


=head2 EnableSharingWithAwsOrganization






Each argument is described in detail in: L<Paws::RAM::EnableSharingWithAwsOrganization>

Returns: a L<Paws::RAM::EnableSharingWithAwsOrganizationResponse> instance

Enables resource sharing within your organization.


=head2 GetResourcePolicies

=over

=item ResourceArns => ArrayRef[Str|Undef]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => Str]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourcePolicies>

Returns: a L<Paws::RAM::GetResourcePoliciesResponse> instance

Gets the policies for the specifies resources.


=head2 GetResourceShareAssociations

=over

=item AssociationType => Str

=item [AssociationStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => Str]

=item [ResourceArn => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourceShareAssociations>

Returns: a L<Paws::RAM::GetResourceShareAssociationsResponse> instance

Gets the associations for the specified resource share.


=head2 GetResourceShareInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceShareInvitationArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourceShareInvitations>

Returns: a L<Paws::RAM::GetResourceShareInvitationsResponse> instance

Gets the specified invitations for resource sharing.


=head2 GetResourceShares

=over

=item ResourceOwner => Str

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceShareStatus => Str]

=item [TagFilters => ArrayRef[L<Paws::RAM::TagFilter>]]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourceShares>

Returns: a L<Paws::RAM::GetResourceSharesResponse> instance

Gets the specified resource shares or all of your resource shares.


=head2 ListPrincipals

=over

=item ResourceOwner => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArn => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListPrincipals>

Returns: a L<Paws::RAM::ListPrincipalsResponse> instance

Lists the principals with access to the specified resource.


=head2 ListResources

=over

=item ResourceOwner => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => Str]

=item [ResourceArns => ArrayRef[Str|Undef]]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListResources>

Returns: a L<Paws::RAM::ListResourcesResponse> instance

Lists the resources that the specified principal can access.


=head2 RejectResourceShareInvitation

=over

=item ResourceShareInvitationArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::RejectResourceShareInvitation>

Returns: a L<Paws::RAM::RejectResourceShareInvitationResponse> instance

Rejects an invitation to a resource share from another AWS account.


=head2 TagResource

=over

=item ResourceShareArn => Str

=item Tags => ArrayRef[L<Paws::RAM::Tag>]


=back

Each argument is described in detail in: L<Paws::RAM::TagResource>

Returns: a L<Paws::RAM::TagResourceResponse> instance

Adds the specified tags to the specified resource share.


=head2 UntagResource

=over

=item ResourceShareArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::RAM::UntagResource>

Returns: a L<Paws::RAM::UntagResourceResponse> instance

Removes the specified tags from the specified resource share.


=head2 UpdateResourceShare

=over

=item ResourceShareArn => Str

=item [AllowExternalPrincipals => Bool]

=item [ClientToken => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::RAM::UpdateResourceShare>

Returns: a L<Paws::RAM::UpdateResourceShareResponse> instance

Updates the specified resource share.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

