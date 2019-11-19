# Generated from default/object.tt
package Paws::Robomaker::LoggingConfig;
  use Moo;
  use Types::Standard qw/Bool/;
  use Paws::Robomaker::Types qw//;
  has RecordAllRosTopics => (is => 'ro', isa => Bool, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RecordAllRosTopics' => 'recordAllRosTopics'
                     },
  'IsRequired' => {
                    'RecordAllRosTopics' => 1
                  },
  'types' => {
               'RecordAllRosTopics' => {
                                         'type' => 'Bool'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::LoggingConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::LoggingConfig object:

  $service_obj->Method(Att1 => { RecordAllRosTopics => $value, ..., RecordAllRosTopics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::LoggingConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->RecordAllRosTopics

=head1 DESCRIPTION

The logging configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecordAllRosTopics => Bool

  A boolean indicating whether to record all ROS topics.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

