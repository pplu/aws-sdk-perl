package Paws::ES::LogPublishingOptionsStatus;
  use Moose;
  has Options => (is => 'ro', isa => 'Paws::ES::LogPublishingOptions');
  has Status => (is => 'ro', isa => 'Paws::ES::OptionStatus');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::LogPublishingOptionsStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::LogPublishingOptionsStatus object:

  $service_obj->Method(Att1 => { Options => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::LogPublishingOptionsStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Options

=head1 DESCRIPTION

The configured log publishing options for the domain and their current
status.

=head1 ATTRIBUTES


=head2 Options => L<Paws::ES::LogPublishingOptions>

  The log publishing options configured for the Elasticsearch domain.


=head2 Status => L<Paws::ES::OptionStatus>

  The status of the log publishing options for the Elasticsearch domain.
See C<OptionStatus> for the status information that's included.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

