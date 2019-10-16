package Paws::ES::Limits;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::ES::Types qw/ES_StorageType ES_InstanceLimits ES_AdditionalLimit/;
  has AdditionalLimits => (is => 'ro', isa => ArrayRef[ES_AdditionalLimit]);
  has InstanceLimits => (is => 'ro', isa => ES_InstanceLimits);
  has StorageTypes => (is => 'ro', isa => ArrayRef[ES_StorageType]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceLimits' => {
                                     'class' => 'Paws::ES::InstanceLimits',
                                     'type' => 'ES_InstanceLimits'
                                   },
               'AdditionalLimits' => {
                                       'class' => 'Paws::ES::AdditionalLimit',
                                       'type' => 'ArrayRef[ES_AdditionalLimit]'
                                     },
               'StorageTypes' => {
                                   'class' => 'Paws::ES::StorageType',
                                   'type' => 'ArrayRef[ES_StorageType]'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::Limits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::Limits object:

  $service_obj->Method(Att1 => { AdditionalLimits => $value, ..., StorageTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::Limits object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalLimits

=head1 DESCRIPTION

Limits for given InstanceType and for each of it's role.

Limits contains following C< StorageTypes, > C< InstanceLimits > and C<
AdditionalLimits>

=head1 ATTRIBUTES


=head2 AdditionalLimits => ArrayRef[ES_AdditionalLimit]

  List of additional limits that are specific to a given InstanceType and
for each of it's C< InstanceRole > .


=head2 InstanceLimits => ES_InstanceLimits

  


=head2 StorageTypes => ArrayRef[ES_StorageType]

  StorageType represents the list of storage related types and attributes
that are available for given InstanceType.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

