# Generated from default/object.tt
package Paws::EMR::ShrinkPolicy;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::EMR::Types qw/EMR_InstanceResizePolicy/;
  has DecommissionTimeout => (is => 'ro', isa => Int);
  has InstanceResizePolicy => (is => 'ro', isa => EMR_InstanceResizePolicy);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceResizePolicy' => {
                                           'class' => 'Paws::EMR::InstanceResizePolicy',
                                           'type' => 'EMR_InstanceResizePolicy'
                                         },
               'DecommissionTimeout' => {
                                          'type' => 'Int'
                                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ShrinkPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::ShrinkPolicy object:

  $service_obj->Method(Att1 => { DecommissionTimeout => $value, ..., InstanceResizePolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::ShrinkPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->DecommissionTimeout

=head1 DESCRIPTION

Policy for customizing shrink operations. Allows configuration of
decommissioning timeout and targeted instance shrinking.

=head1 ATTRIBUTES


=head2 DecommissionTimeout => Int

  The desired timeout for decommissioning an instance. Overrides the
default YARN decommissioning timeout.


=head2 InstanceResizePolicy => EMR_InstanceResizePolicy

  Custom policy for requesting termination protection or termination of
specific instances when shrinking an instance group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

