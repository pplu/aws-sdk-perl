package Paws::EC2::ElasticInferenceAcceleratorAssociation;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has ElasticInferenceAcceleratorArn => (is => 'ro', isa => Str);
  has ElasticInferenceAcceleratorAssociationId => (is => 'ro', isa => Str);
  has ElasticInferenceAcceleratorAssociationState => (is => 'ro', isa => Str);
  has ElasticInferenceAcceleratorAssociationTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ElasticInferenceAcceleratorAssociationState' => 'elasticInferenceAcceleratorAssociationState',
                       'ElasticInferenceAcceleratorAssociationId' => 'elasticInferenceAcceleratorAssociationId',
                       'ElasticInferenceAcceleratorArn' => 'elasticInferenceAcceleratorArn',
                       'ElasticInferenceAcceleratorAssociationTime' => 'elasticInferenceAcceleratorAssociationTime'
                     },
  'types' => {
               'ElasticInferenceAcceleratorAssociationId' => {
                                                               'type' => 'Str'
                                                             },
               'ElasticInferenceAcceleratorAssociationState' => {
                                                                  'type' => 'Str'
                                                                },
               'ElasticInferenceAcceleratorAssociationTime' => {
                                                                 'type' => 'Str'
                                                               },
               'ElasticInferenceAcceleratorArn' => {
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

Paws::EC2::ElasticInferenceAcceleratorAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ElasticInferenceAcceleratorAssociation object:

  $service_obj->Method(Att1 => { ElasticInferenceAcceleratorArn => $value, ..., ElasticInferenceAcceleratorAssociationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ElasticInferenceAcceleratorAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->ElasticInferenceAcceleratorArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ElasticInferenceAcceleratorArn => Str

  The Amazon Resource Name (ARN) of the elastic inference accelerator.


=head2 ElasticInferenceAcceleratorAssociationId => Str

  The ID of the association.


=head2 ElasticInferenceAcceleratorAssociationState => Str

  The state of the elastic inference accelerator.


=head2 ElasticInferenceAcceleratorAssociationTime => Str

  The time at which the elastic inference accelerator is associated with
an instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
