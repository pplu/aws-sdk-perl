# Generated from default/object.tt
package Paws::CloudWatchEvents::RunCommandParameters;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_RunCommandTarget/;
  has RunCommandTargets => (is => 'ro', isa => ArrayRef[CloudWatchEvents_RunCommandTarget], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RunCommandTargets' => {
                                        'class' => 'Paws::CloudWatchEvents::RunCommandTarget',
                                        'type' => 'ArrayRef[CloudWatchEvents_RunCommandTarget]'
                                      }
             },
  'IsRequired' => {
                    'RunCommandTargets' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::RunCommandParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::RunCommandParameters object:

  $service_obj->Method(Att1 => { RunCommandTargets => $value, ..., RunCommandTargets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::RunCommandParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->RunCommandTargets

=head1 DESCRIPTION

This parameter contains the criteria (either C<InstanceIds> or a tag)
used to specify which EC2 instances are to be sent the command.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RunCommandTargets => ArrayRef[CloudWatchEvents_RunCommandTarget]

  Currently, we support including only one C<RunCommandTarget> block,
which specifies either an array of C<InstanceIds> or a tag.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

