# Generated from default/object.tt
package Paws::CostExplorer::ModifyRecommendationDetail;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_TargetInstance/;
  has TargetInstances => (is => 'ro', isa => ArrayRef[CostExplorer_TargetInstance]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TargetInstances' => {
                                      'type' => 'ArrayRef[CostExplorer_TargetInstance]',
                                      'class' => 'Paws::CostExplorer::TargetInstance'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ModifyRecommendationDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ModifyRecommendationDetail object:

  $service_obj->Method(Att1 => { TargetInstances => $value, ..., TargetInstances => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ModifyRecommendationDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->TargetInstances

=head1 DESCRIPTION

Details on the modification recommendation.

=head1 ATTRIBUTES


=head2 TargetInstances => ArrayRef[CostExplorer_TargetInstance]

  Identifies whether this instance type is the Amazon Web Services
default recommendation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

