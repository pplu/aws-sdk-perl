# Generated from default/object.tt
package Paws::EKS::UpdateLabelsPayload;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::EKS::Types qw/EKS_labelsMap/;
  has AddOrUpdateLabels => (is => 'ro', isa => EKS_labelsMap);
  has RemoveLabels => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AddOrUpdateLabels' => 'addOrUpdateLabels',
                       'RemoveLabels' => 'removeLabels'
                     },
  'types' => {
               'AddOrUpdateLabels' => {
                                        'type' => 'EKS_labelsMap',
                                        'class' => 'Paws::EKS::LabelsMap'
                                      },
               'RemoveLabels' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateLabelsPayload

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::UpdateLabelsPayload object:

  $service_obj->Method(Att1 => { AddOrUpdateLabels => $value, ..., RemoveLabels => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::UpdateLabelsPayload object:

  $result = $service_obj->Method(...);
  $result->Att1->AddOrUpdateLabels

=head1 DESCRIPTION

An object representing a Kubernetes label change for a managed node
group.

=head1 ATTRIBUTES


=head2 AddOrUpdateLabels => EKS_labelsMap

  Kubernetes labels to be added or updated.


=head2 RemoveLabels => ArrayRef[Str|Undef]

  Kubernetes labels to be removed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

