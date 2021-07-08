
package Paws::ElastiCache::CreateUser;
  use Moose;
  has AccessString => (is => 'ro', isa => 'Str', required => 1);
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has NoPasswordRequired => (is => 'ro', isa => 'Bool');
  has Passwords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]');
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::User');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUserResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateUser - Arguments for method CreateUser on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $User = $elasticache->CreateUser(
      AccessString       => 'MyAccessString',
      Engine             => 'MyEngineType',
      UserId             => 'MyUserId',
      UserName           => 'MyUserName',
      NoPasswordRequired => 1,                      # OPTIONAL
      Passwords          => [ 'MyString', ... ],    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                            # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CreateUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessString => Str

Access permissions string used for this user.



=head2 B<REQUIRED> Engine => Str

The current supported value is Redis.



=head2 NoPasswordRequired => Bool

Indicates a password is not required for this user.



=head2 Passwords => ArrayRef[Str|Undef]

Passwords used for this user. You can create up to two passwords for
each user.



=head2 Tags => ArrayRef[L<Paws::ElastiCache::Tag>]

A list of tags to be added to this resource. A tag is a key-value pair.
A tag key must be accompanied by a tag value, although null is
accepted.



=head2 B<REQUIRED> UserId => Str

The ID of the user.



=head2 B<REQUIRED> UserName => Str

The username of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

