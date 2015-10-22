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

A complex type that contains information about the health check status
for the current observation.

=head1 ATTRIBUTES

=head2 CheckedTime => Str

  The date and time the health check status was observed, in the format
C<YYYY-MM-DDThh:mm:ssZ>, as specified in the ISO 8601 standard (for
example, 2009-11-19T19:37:58Z). The C<Z> after the time indicates that
the time is listed in Coordinated Universal Time (UTC), which is
synonymous with Greenwich Mean Time in this context.

=head2 Status => Str

  The observed health check status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

