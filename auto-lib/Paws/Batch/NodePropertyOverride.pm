# Generated from default/object.tt
package Paws::Batch::NodePropertyOverride;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Batch::Types qw/Batch_ContainerOverrides/;
  has ContainerOverrides => (is => 'ro', isa => Batch_ContainerOverrides);
  has TargetNodes => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TargetNodes' => 1
                  },
  'NameInRequest' => {
                       'ContainerOverrides' => 'containerOverrides',
                       'TargetNodes' => 'targetNodes'
                     },
  'types' => {
               'TargetNodes' => {
                                  'type' => 'Str'
                                },
               'ContainerOverrides' => {
                                         'class' => 'Paws::Batch::ContainerOverrides',
                                         'type' => 'Batch_ContainerOverrides'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::NodePropertyOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::NodePropertyOverride object:

  $service_obj->Method(Att1 => { ContainerOverrides => $value, ..., TargetNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::NodePropertyOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerOverrides

=head1 DESCRIPTION

Object representing any node overrides to a job definition that is used
in a SubmitJob API operation.

=head1 ATTRIBUTES


=head2 ContainerOverrides => Batch_ContainerOverrides

  The overrides that should be sent to a node range.


=head2 B<REQUIRED> TargetNodes => Str

  The range of nodes, using node index values, with which to override. A
range of C<0:3> indicates nodes with index values of C<0> through C<3>.
If the starting range value is omitted (C<:n>), then C<0> is used to
start the range. If the ending range value is omitted (C<n:>), then the
highest possible node index is used to end the range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

