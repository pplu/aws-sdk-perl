package Paws::CodeDeploy::EC2TagFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::EC2TagFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::EC2TagFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::EC2TagFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Information about an EC2 tag filter.

=head1 ATTRIBUTES


=head2 Key => Str

  The tag filter key.


=head2 Type => Str

  The tag filter type:

=over

=item *

KEY_ONLY: Key only.

=item *

VALUE_ONLY: Value only.

=item *

KEY_AND_VALUE: Key and value.

=back



=head2 Value => Str

  The tag filter value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

