package Paws::CognitoIdp::RiskExceptionConfigurationType;
  use Moose;
  has BlockedIPRangeList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SkippedIPRangeList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::RiskExceptionConfigurationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::RiskExceptionConfigurationType object:

  $service_obj->Method(Att1 => { BlockedIPRangeList => $value, ..., SkippedIPRangeList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::RiskExceptionConfigurationType object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockedIPRangeList

=head1 DESCRIPTION

The type of the configuration to override the risk decision.

=head1 ATTRIBUTES


=head2 BlockedIPRangeList => ArrayRef[Str|Undef]

  Overrides the risk decision to always block the pre-authentication
requests. The IP range is in CIDR notation: a compact representation of
an IP address and its associated routing prefix.


=head2 SkippedIPRangeList => ArrayRef[Str|Undef]

  Risk detection is not performed on the IP addresses in the range list.
The IP range is in CIDR notation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

