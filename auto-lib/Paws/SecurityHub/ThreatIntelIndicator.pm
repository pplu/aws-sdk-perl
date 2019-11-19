# Generated from default/object.tt
package Paws::SecurityHub::ThreatIntelIndicator;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw//;
  has Category => (is => 'ro', isa => Str);
  has LastObservedAt => (is => 'ro', isa => Str);
  has Source => (is => 'ro', isa => Str);
  has SourceUrl => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastObservedAt' => {
                                     'type' => 'Str'
                                   },
               'Source' => {
                             'type' => 'Str'
                           },
               'SourceUrl' => {
                                'type' => 'Str'
                              },
               'Category' => {
                               'type' => 'Str'
                             },
               'Type' => {
                           'type' => 'Str'
                         },
               'Value' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ThreatIntelIndicator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::ThreatIntelIndicator object:

  $service_obj->Method(Att1 => { Category => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::ThreatIntelIndicator object:

  $result = $service_obj->Method(...);
  $result->Att1->Category

=head1 DESCRIPTION

Details about the threat intel related to a finding.

=head1 ATTRIBUTES


=head2 Category => Str

  The category of a threat intel indicator.


=head2 LastObservedAt => Str

  The date and time when the most recent instance of a threat intel
indicator was observed.


=head2 Source => Str

  The source of the threat intel indicator.


=head2 SourceUrl => Str

  The URL to the page or site where you can get more information about
the threat intel indicator.


=head2 Type => Str

  The type of a threat intel indicator.


=head2 Value => Str

  The value of a threat intel indicator.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

