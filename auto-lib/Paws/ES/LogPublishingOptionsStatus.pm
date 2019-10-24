# Generated from default/object.tt
package Paws::ES::LogPublishingOptionsStatus;
  use Moo;
  use Types::Standard qw//;
  use Paws::ES::Types qw/ES_OptionStatus ES_LogPublishingOptions/;
  has Options => (is => 'ro', isa => ES_LogPublishingOptions);
  has Status => (is => 'ro', isa => ES_OptionStatus);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Options' => {
                              'class' => 'Paws::ES::LogPublishingOptions',
                              'type' => 'ES_LogPublishingOptions'
                            },
               'Status' => {
                             'class' => 'Paws::ES::OptionStatus',
                             'type' => 'ES_OptionStatus'
                           }
             }
}
;
    return $Params_map;
  }


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


=head2 Options => ES_LogPublishingOptions

  The log publishing options configured for the Elasticsearch domain.


=head2 Status => ES_OptionStatus

  The status of the log publishing options for the Elasticsearch domain.
See C<OptionStatus> for the status information that's included.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

