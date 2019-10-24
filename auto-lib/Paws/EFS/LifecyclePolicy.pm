# Generated from default/object.tt
package Paws::EFS::LifecyclePolicy;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EFS::Types qw//;
  has TransitionToIA => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransitionToIA' => {
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

Paws::EFS::LifecyclePolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EFS::LifecyclePolicy object:

  $service_obj->Method(Att1 => { TransitionToIA => $value, ..., TransitionToIA => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EFS::LifecyclePolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->TransitionToIA

=head1 DESCRIPTION

Describes a policy used by EFS lifecycle management to transition files
to the Infrequent Access (IA) storage class.

=head1 ATTRIBUTES


=head2 TransitionToIA => Str

  A value that describes the period of time that a file is not accessed,
after which it transitions to the IA storage class. Metadata operations
such as listing the contents of a directory don't count as file access
events.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

