
package Paws::EMR::CreateStudioSessionMapping;
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str');
  has IdentityName => (is => 'ro', isa => 'Str');
  has IdentityType => (is => 'ro', isa => 'Str', required => 1);
  has SessionPolicyArn => (is => 'ro', isa => 'Str', required => 1);
  has StudioId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStudioSessionMapping');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CreateStudioSessionMapping - Arguments for method CreateStudioSessionMapping on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStudioSessionMapping on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method CreateStudioSessionMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStudioSessionMapping.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    $elasticmapreduce->CreateStudioSessionMapping(
      IdentityType     => 'USER',
      SessionPolicyArn => 'MyXmlStringMaxLen256',
      StudioId         => 'MyXmlStringMaxLen256',
      IdentityId       => 'MyXmlStringMaxLen256',    # OPTIONAL
      IdentityName     => 'MyXmlStringMaxLen256',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/CreateStudioSessionMapping>

=head1 ATTRIBUTES


=head2 IdentityId => Str

The globally unique identifier (GUID) of the user or group from the AWS
SSO Identity Store. For more information, see UserId
(https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId)
and GroupId
(https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId)
in the I<AWS SSO Identity Store API Reference>. Either C<IdentityName>
or C<IdentityId> must be specified.



=head2 IdentityName => Str

The name of the user or group. For more information, see UserName
(https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName)
and DisplayName
(https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName)
in the I<AWS SSO Identity Store API Reference>. Either C<IdentityName>
or C<IdentityId> must be specified.



=head2 B<REQUIRED> IdentityType => Str

Specifies whether the identity to map to the Amazon EMR Studio is a
user or a group.

Valid values are: C<"USER">, C<"GROUP">

=head2 B<REQUIRED> SessionPolicyArn => Str

The Amazon Resource Name (ARN) for the session policy that will be
applied to the user or group. Session policies refine Studio user
permissions without the need to use multiple IAM user roles.



=head2 B<REQUIRED> StudioId => Str

The ID of the Amazon EMR Studio to which the user or group will be
mapped.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStudioSessionMapping in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

