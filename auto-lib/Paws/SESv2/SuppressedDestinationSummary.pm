package Paws::SESv2::SuppressedDestinationSummary;
  use Moose;
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdateTime => (is => 'ro', isa => 'Str', required => 1);
  has Reason => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::SuppressedDestinationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::SuppressedDestinationSummary object:

  $service_obj->Method(Att1 => { EmailAddress => $value, ..., Reason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::SuppressedDestinationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->EmailAddress

=head1 DESCRIPTION

A summary for the suppressed email destination.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailAddress => Str

  The suppressed email destination.


=head2 B<REQUIRED> LastUpdateTime => Str

  The last time the suppressed destination was updated.


=head2 B<REQUIRED> Reason => Str

  The reason for which the email destination is suppressed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

