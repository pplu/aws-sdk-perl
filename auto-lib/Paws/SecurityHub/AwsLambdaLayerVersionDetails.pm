package Paws::SecurityHub::AwsLambdaLayerVersionDetails;
  use Moose;
  has CompatibleRuntimes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsLambdaLayerVersionDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsLambdaLayerVersionDetails object:

  $service_obj->Method(Att1 => { CompatibleRuntimes => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsLambdaLayerVersionDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CompatibleRuntimes

=head1 DESCRIPTION

Details about a Lambda layer version.

=head1 ATTRIBUTES


=head2 CompatibleRuntimes => ArrayRef[Str|Undef]

  The layer's compatible runtimes. Maximum number of 5 items.

Valid values: C<nodejs8.10> | C<nodejs10.x> | C<nodejs12.x> | C<java8>
| C<java11> | C<python2.7> | C<python3.6> | C<python3.7> | C<python3.8>
| C<dotnetcore1.0> | C<dotnetcore2.1> | C<go1.x> | C<ruby2.5> |
C<provided>


=head2 CreatedDate => Str

  The date that the version was created, in ISO 8601 format. For example,
2018-11-27T15:10:45.123+0000.


=head2 Version => Int

  The version number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

