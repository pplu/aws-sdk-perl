
package Paws::Quicksight::RegisterUser;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Email => (is => 'ro', isa => 'Str', required => 1);
  has IamArn => (is => 'ro', isa => 'Str');
  has IdentityType => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Namespace', required => 1);
  has SessionName => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
  has UserRole => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/namespaces/{Namespace}/users');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::RegisterUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::RegisterUser - Arguments for method RegisterUser on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterUser on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method RegisterUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterUser.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $RegisterUserResponse = $quicksight->RegisterUser(
      AwsAccountId => 'MyAwsAccountId',
      Email        => 'MyString',
      IdentityType => 'IAM',
      Namespace    => 'MyNamespace',
      UserRole     => 'ADMIN',
      IamArn       => 'MyString',         # OPTIONAL
      SessionName  => 'MyString',         # OPTIONAL
      UserName     => 'MyUserName',       # OPTIONAL
    );

    # Results:
    my $RequestId         = $RegisterUserResponse->RequestId;
    my $Status            = $RegisterUserResponse->Status;
    my $User              = $RegisterUserResponse->User;
    my $UserInvitationUrl = $RegisterUserResponse->UserInvitationUrl;

    # Returns a L<Paws::Quicksight::RegisterUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/RegisterUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that the user is in. Currently, you use the
ID for the AWS account that contains your Amazon QuickSight account.



=head2 B<REQUIRED> Email => Str

The email address of the user that you want to register.



=head2 IamArn => Str

The ARN of the IAM user or role that you are registering with Amazon
QuickSight.



=head2 B<REQUIRED> IdentityType => Str

Amazon QuickSight supports several ways of managing the identity of
users. This parameter accepts two values:

=over

=item *

C<IAM>: A user whose identity maps to an existing IAM user or role.

=item *

C<QUICKSIGHT>: A user whose identity is owned and managed internally by
Amazon QuickSight.

=back


Valid values are: C<"IAM">, C<"QUICKSIGHT">

=head2 B<REQUIRED> Namespace => Str

The namespace. Currently, you should set this to C<default>.



=head2 SessionName => Str

The name of the session with the assumed IAM role. By using this
parameter, you can register multiple users with the same IAM role,
provided that each has a different session name. For more information
on assuming IAM roles, see C<assume-role>
(https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html)
in the I<AWS CLI Reference.>



=head2 UserName => Str

The Amazon QuickSight user name that you want to create for the user
you are registering.



=head2 B<REQUIRED> UserRole => Str

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


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterUser in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

