# Generated from default/object.tt
package Paws::IoT::Behavior;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_BehaviorCriteria/;
  has Criteria => (is => 'ro', isa => IoT_BehaviorCriteria);
  has Metric => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Name' => 'name',
                       'Criteria' => 'criteria',
                       'Metric' => 'metric'
                     },
  'IsRequired' => {
                    'Name' => 1
                  },
  'types' => {
               'Metric' => {
                             'type' => 'Str'
                           },
               'Name' => {
                           'type' => 'Str'
                         },
               'Criteria' => {
                               'type' => 'IoT_BehaviorCriteria',
                               'class' => 'Paws::IoT::BehaviorCriteria'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::Behavior

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::Behavior object:

  $service_obj->Method(Att1 => { Criteria => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::Behavior object:

  $result = $service_obj->Method(...);
  $result->Att1->Criteria

=head1 DESCRIPTION

A Device Defender security profile behavior.

=head1 ATTRIBUTES


=head2 Criteria => IoT_BehaviorCriteria

  The criteria that determine if a device is behaving normally in regard
to the C<metric>.


=head2 Metric => Str

  What is measured by the behavior.


=head2 B<REQUIRED> Name => Str

  The name you have given to the behavior.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

