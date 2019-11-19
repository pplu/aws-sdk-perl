# Generated from default/object.tt
package Paws::IoTAnalytics::DatasetContentStatus;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw//;
  has Reason => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'State' => 'state',
                       'Reason' => 'reason'
                     },
  'types' => {
               'Reason' => {
                             'type' => 'Str'
                           },
               'State' => {
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

Paws::IoTAnalytics::DatasetContentStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatasetContentStatus object:

  $service_obj->Method(Att1 => { Reason => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatasetContentStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Reason

=head1 DESCRIPTION

The state of the data set contents and the reason they are in this
state.

=head1 ATTRIBUTES


=head2 Reason => Str

  The reason the data set contents are in this state.


=head2 State => Str

  The state of the data set contents. Can be one of "READY", "CREATING",
"SUCCEEDED" or "FAILED".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

