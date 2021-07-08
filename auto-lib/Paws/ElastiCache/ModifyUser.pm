
package Paws::ElastiCache::ModifyUser;
  use Moose;
  has AccessString => (is => 'ro', isa => 'Str');
  has AppendAccessString => (is => 'ro', isa => 'Str');
  has NoPasswordRequired => (is => 'ro', isa => 'Bool');
  has Passwords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::User');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyUserResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyUser - Arguments for method ModifyUser on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyUser on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ModifyUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyUser.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $User = $elasticache->ModifyUser(
      UserId             => 'MyUserId',
      AccessString       => 'MyAccessString',       # OPTIONAL
      AppendAccessString => 'MyAccessString',       # OPTIONAL
      NoPasswordRequired => 1,                      # OPTIONAL
      Passwords          => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $ARN            = $User->ARN;
    my $AccessString   = $User->AccessString;
    my $Authentication = $User->Authentication;
    my $Engine         = $User->Engine;
    my $Status         = $User->Status;
    my $UserGroupIds   = $User->UserGroupIds;
    my $UserId         = $User->UserId;
    my $UserName       = $User->UserName;

    # Returns a L<Paws::ElastiCache::User> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ModifyUser>

=head1 ATTRIBUTES


=head2 AccessString => Str

Access permissions string used for this user.



=head2 AppendAccessString => Str

Adds additional user permissions to the access string.



=head2 NoPasswordRequired => Bool

Indicates no password is required for the user.



=head2 Passwords => ArrayRef[Str|Undef]

The passwords belonging to the user. You are allowed up to two.



=head2 B<REQUIRED> UserId => Str

The ID of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyUser in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

