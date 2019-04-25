
package Paws::Quicksight::UpdateUser;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Email => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Namespace', required => 1);
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'UserName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateUser - Arguments for method UpdateUser on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUser on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUser.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateUserResponse = $quicksight->UpdateUser(
      AwsAccountId => 'MyAwsAccountId',
      Email        => 'MyString',
      Namespace    => 'MyNamespace',
      Role         => 'ADMIN',
      UserName     => 'MyUserName',

    );

    # Results:
    my $RequestId = $UpdateUserResponse->RequestId;
    my $Status    = $UpdateUserResponse->Status;
    my $User      = $UpdateUserResponse->User;

    # Returns a L<Paws::Quicksight::UpdateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that the user is in. Currently, you use the
ID for the AWS account that contains your Amazon QuickSight account.



=head2 B<REQUIRED> Email => Str

The email address of the user that you want to update.



=head2 B<REQUIRED> Namespace => Str

The namespace. Currently, you should set this to C<default>.



=head2 B<REQUIRED> Role => Str

The Amazon QuickSight role of the user. The user role can be one of the
following:

=over

=item *

C<READER>: A user who has read-only access to dashboards.

=item *

C<AUTHOR>: A user who can create data sources, data sets, analyses, and
dashboards.

=item *

C<ADMIN>: A user who is an author, who can also manage Amazon
QuickSight settings.

=back


Valid values are: C<"ADMIN">, C<"AUTHOR">, C<"READER">, C<"RESTRICTED_AUTHOR">, C<"RESTRICTED_READER">

=head2 B<REQUIRED> UserName => Str

The Amazon QuickSight user name that you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

