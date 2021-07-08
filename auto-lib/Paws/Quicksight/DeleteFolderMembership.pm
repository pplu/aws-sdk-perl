
package Paws::Quicksight::DeleteFolderMembership;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has FolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FolderId', required => 1);
  has MemberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MemberId', required => 1);
  has MemberType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MemberType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFolderMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/folders/{FolderId}/members/{MemberType}/{MemberId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DeleteFolderMembershipResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteFolderMembership - Arguments for method DeleteFolderMembership on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFolderMembership on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DeleteFolderMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFolderMembership.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DeleteFolderMembershipResponse = $quicksight->DeleteFolderMembership(
      AwsAccountId => 'MyAwsAccountId',
      FolderId     => 'MyRestrictiveResourceId',
      MemberId     => 'MyRestrictiveResourceId',
      MemberType   => 'DASHBOARD',

    );

    # Results:
    my $RequestId = $DeleteFolderMembershipResponse->RequestId;
    my $Status    = $DeleteFolderMembershipResponse->Status;

    # Returns a L<Paws::Quicksight::DeleteFolderMembershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DeleteFolderMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS Account ID.



=head2 B<REQUIRED> FolderId => Str

The Folder ID.



=head2 B<REQUIRED> MemberId => Str

The ID of the asset (the dashboard, analysis, or dataset) that you want
to delete.



=head2 B<REQUIRED> MemberType => Str

The type of the member, including C<DASHBOARD>, C<ANALYSIS>, and
C<DATASET>

Valid values are: C<"DASHBOARD">, C<"ANALYSIS">, C<"DATASET">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFolderMembership in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

