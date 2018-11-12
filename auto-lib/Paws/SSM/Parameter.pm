package Paws::SSM::Parameter;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Selector => (is => 'ro', isa => 'Str');
  has SourceResult => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::Parameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::Parameter object:

  $service_obj->Method(Att1 => { ARN => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::Parameter object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

An Amazon EC2 Systems Manager parameter in Parameter Store.

=head1 ATTRIBUTES


=head2 ARN => Str

  The Amazon Resource Name (ARN) of the parameter.


=head2 LastModifiedDate => Str

  Date the parameter was last changed or updated and the parameter
version was created.


=head2 Name => Str

  The name of the parameter.


=head2 Selector => Str

  Either the version number or the label used to retrieve the parameter
value. Specify selectors by using one of the following formats:

parameter_name:version

parameter_name:label


=head2 SourceResult => Str

  Applies to parameters that reference information in other AWS services.
SourceResult is the raw result or response from the source.


=head2 Type => Str

  The type of parameter. Valid values include the following: String,
String list, Secure string.


=head2 Value => Str

  The parameter value.


=head2 Version => Int

  The parameter version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

