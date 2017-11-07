package Paws::CloudFormation::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The Tag type enables you to specify a key-value pair that can be used
to store information about an AWS CloudFormation stack.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  I<Required>. A string used to identify this tag. You can specify a
maximum of 128 characters for a tag key. Tags owned by Amazon Web
Services (AWS) have the reserved prefix: C<aws:>.


=head2 B<REQUIRED> Value => Str

  I<Required>. A string containing the value for this tag. You can
specify a maximum of 256 characters for a tag value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

