# Generated from default/object.tt
package Paws::SimpleWorkflow::ActivityTypeInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_ActivityType/;
  has ActivityType => (is => 'ro', isa => SimpleWorkflow_ActivityType, required => 1);
  has CreationDate => (is => 'ro', isa => Str, required => 1);
  has DeprecationDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActivityType' => {
                                   'class' => 'Paws::SimpleWorkflow::ActivityType',
                                   'type' => 'SimpleWorkflow_ActivityType'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'DeprecationDate' => {
                                      'type' => 'Str'
                                    },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ActivityType' => 'activityType',
                       'Status' => 'status',
                       'CreationDate' => 'creationDate',
                       'DeprecationDate' => 'deprecationDate',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'ActivityType' => 1,
                    'Status' => 1,
                    'CreationDate' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTypeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ActivityTypeInfo object:

  $service_obj->Method(Att1 => { ActivityType => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ActivityTypeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityType

=head1 DESCRIPTION

Detailed information about an activity type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityType => SimpleWorkflow_ActivityType

  The ActivityType type structure representing the activity type.


=head2 B<REQUIRED> CreationDate => Str

  The date and time this activity type was created through
RegisterActivityType.


=head2 DeprecationDate => Str

  If DEPRECATED, the date and time DeprecateActivityType was called.


=head2 Description => Str

  The description of the activity type provided in RegisterActivityType.


=head2 B<REQUIRED> Status => Str

  The current status of the activity type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

