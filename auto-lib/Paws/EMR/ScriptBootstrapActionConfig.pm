package Paws::EMR::ScriptBootstrapActionConfig;
  use Moose;
  has Args => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Path => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ScriptBootstrapActionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::ScriptBootstrapActionConfig object:

  $service_obj->Method(Att1 => { Args => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::ScriptBootstrapActionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Args

=head1 DESCRIPTION

Configuration of the script to run during a bootstrap action.

=head1 ATTRIBUTES


=head2 Args => ArrayRef[Str|Undef]

  A list of command line arguments to pass to the bootstrap action
script.


=head2 B<REQUIRED> Path => Str

  Location of the script to run during a bootstrap action. Can be either
a location in Amazon S3 or on a local file system.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

