
package Paws::GameLift::CreateBuild;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has StorageLocation => (is => 'ro', isa => 'Paws::GameLift::S3Location');
  has Version => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBuild');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateBuildOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateBuild - Arguments for method CreateBuild on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBuild on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method CreateBuild.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBuild.

As an example:

  $service_obj->CreateBuild(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Name => Str

Descriptive label associated with a build. Build names do not need to
be unique. A build name can be changed later using C<UpdateBuild>.



=head2 StorageLocation => L<Paws::GameLift::S3Location>





=head2 Version => Str

Version associated with this build. Version strings do not need to be
unique to a build. A build version can be changed later using
C<UpdateBuild>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBuild in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

