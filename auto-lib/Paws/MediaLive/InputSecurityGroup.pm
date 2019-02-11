package Paws::MediaLive::InputSecurityGroup;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Inputs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'inputs', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has WhitelistRules => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputWhitelistRule]', request_name => 'whitelistRules', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputSecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputSecurityGroup object:

  $service_obj->Method(Att1 => { Arn => $value, ..., WhitelistRules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputSecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An Input Security Group

=head1 ATTRIBUTES


=head2 Arn => Str

  Unique ARN of Input Security Group


=head2 Id => Str

  The Id of the Input Security Group


=head2 Inputs => ArrayRef[Str|Undef]

  The list of inputs currently using this Input Security Group.


=head2 State => Str

  The current state of the Input Security Group.


=head2 Tags => L<Paws::MediaLive::Tags>

  A collection of key-value pairs.


=head2 WhitelistRules => ArrayRef[L<Paws::MediaLive::InputWhitelistRule>]

  Whitelist rules and their sync status



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

