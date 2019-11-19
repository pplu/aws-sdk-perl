package Paws::EC2::ReservedInstancesListing;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Tag EC2_InstanceCount EC2_PriceSchedule/;
  has ClientToken => (is => 'ro', isa => Str);
  has CreateDate => (is => 'ro', isa => Str);
  has InstanceCounts => (is => 'ro', isa => ArrayRef[EC2_InstanceCount]);
  has PriceSchedules => (is => 'ro', isa => ArrayRef[EC2_PriceSchedule]);
  has ReservedInstancesId => (is => 'ro', isa => Str);
  has ReservedInstancesListingId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has UpdateDate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PriceSchedules' => 'priceSchedules',
                       'Tags' => 'tagSet',
                       'InstanceCounts' => 'instanceCounts',
                       'UpdateDate' => 'updateDate',
                       'CreateDate' => 'createDate',
                       'Status' => 'status',
                       'ClientToken' => 'clientToken',
                       'ReservedInstancesId' => 'reservedInstancesId',
                       'StatusMessage' => 'statusMessage',
                       'ReservedInstancesListingId' => 'reservedInstancesListingId'
                     },
  'types' => {
               'CreateDate' => {
                                 'type' => 'Str'
                               },
               'UpdateDate' => {
                                 'type' => 'Str'
                               },
               'InstanceCounts' => {
                                     'type' => 'ArrayRef[EC2_InstanceCount]',
                                     'class' => 'Paws::EC2::InstanceCount'
                                   },
               'Status' => {
                             'type' => 'Str'
                           },
               'Tags' => {
                           'type' => 'ArrayRef[EC2_Tag]',
                           'class' => 'Paws::EC2::Tag'
                         },
               'PriceSchedules' => {
                                     'class' => 'Paws::EC2::PriceSchedule',
                                     'type' => 'ArrayRef[EC2_PriceSchedule]'
                                   },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'ReservedInstancesId' => {
                                          'type' => 'Str'
                                        },
               'ReservedInstancesListingId' => {
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

Paws::EC2::ReservedInstancesListing

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReservedInstancesListing object:

  $service_obj->Method(Att1 => { ClientToken => $value, ..., UpdateDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReservedInstancesListing object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientToken

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ClientToken => Str

  A unique, case-sensitive key supplied by the client to ensure that the
request is idempotent. For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 CreateDate => Str

  The time the listing was created.


=head2 InstanceCounts => ArrayRef[EC2_InstanceCount]

  The number of instances in this state.


=head2 PriceSchedules => ArrayRef[EC2_PriceSchedule]

  The price of the Reserved Instance listing.


=head2 ReservedInstancesId => Str

  The ID of the Reserved Instance.


=head2 ReservedInstancesListingId => Str

  The ID of the Reserved Instance listing.


=head2 Status => Str

  The status of the Reserved Instance listing.


=head2 StatusMessage => Str

  The reason for the current status of the Reserved Instance listing. The
response can be blank.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the resource.


=head2 UpdateDate => Str

  The last modified timestamp of the listing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
