package Paws::CloudFormation::ParameterConstraints;
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'ArrayRef[Str]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ParameterConstraints

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::ParameterConstraints object:

  $service_obj->Method(Att1 => { AllowedValues => $value, ..., AllowedValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::ParameterConstraints object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedValues

=head1 ATTRIBUTES

=head2 AllowedValues => ArrayRef[Str]

  

A list of values that are permitted for a parameter.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

