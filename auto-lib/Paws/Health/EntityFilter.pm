# Generated from default/object.tt
package Paws::Health::EntityFilter;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::Health::Types qw/Health_tagSet Health_DateTimeRange/;
  has EntityArns => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has EntityValues => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has EventArns => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has LastUpdatedTimes => (is => 'ro', isa => ArrayRef[Health_DateTimeRange]);
  has StatusCodes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Tags => (is => 'ro', isa => ArrayRef[Health_tagSet]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastUpdatedTimes' => {
                                       'class' => 'Paws::Health::DateTimeRange',
                                       'type' => 'ArrayRef[Health_DateTimeRange]'
                                     },
               'EntityValues' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'StatusCodes' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'EventArns' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'Tags' => {
                           'class' => 'Paws::Health::TagSet',
                           'type' => 'ArrayRef[Health_tagSet]'
                         },
               'EntityArns' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               }
             },
  'NameInRequest' => {
                       'LastUpdatedTimes' => 'lastUpdatedTimes',
                       'EntityValues' => 'entityValues',
                       'StatusCodes' => 'statusCodes',
                       'EventArns' => 'eventArns',
                       'Tags' => 'tags',
                       'EntityArns' => 'entityArns'
                     },
  'IsRequired' => {
                    'EventArns' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::EntityFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::EntityFilter object:

  $service_obj->Method(Att1 => { EntityArns => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::EntityFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->EntityArns

=head1 DESCRIPTION

The values to use to filter results from the DescribeAffectedEntities
operation.

=head1 ATTRIBUTES


=head2 EntityArns => ArrayRef[Str|Undef]

  A list of entity ARNs (unique identifiers).


=head2 EntityValues => ArrayRef[Str|Undef]

  A list of IDs for affected entities.


=head2 B<REQUIRED> EventArns => ArrayRef[Str|Undef]

  A list of event ARNs (unique identifiers). For example:
C<"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101">


=head2 LastUpdatedTimes => ArrayRef[Health_DateTimeRange]

  A list of the most recent dates and times that the entity was updated.


=head2 StatusCodes => ArrayRef[Str|Undef]

  A list of entity status codes (C<IMPAIRED>, C<UNIMPAIRED>, or
C<UNKNOWN>).


=head2 Tags => ArrayRef[Health_tagSet]

  A map of entity tags attached to the affected entity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

