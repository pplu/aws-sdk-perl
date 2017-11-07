package Paws::Route53::StatusReport;
  use Moose;
  has CheckedTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::StatusReport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::StatusReport object:

  $service_obj->Method(Att1 => { CheckedTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::StatusReport object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckedTime

=head1 DESCRIPTION

A complex type that contains the status that one Amazon Route 53 health
checker reports and the time of the health check.

=head1 ATTRIBUTES


=head2 CheckedTime => Str

  The date and time that the health checker performed the health check in
ISO 8601 format (https://en.wikipedia.org/wiki/ISO_8601) and
Coordinated Universal Time (UTC). For example, the value
C<2017-03-27T17:48:16.751Z> represents March 27, 2017 at 17:48:16.751
UTC.


=head2 Status => Str

  A description of the status of the health check endpoint as reported by
one of the Amazon Route 53 health checkers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

