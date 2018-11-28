package Paws::SecurityHub::Result;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has ProcessingResult => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Result

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Result object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., ProcessingResult => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Result object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The account details that could not be processed.

=head1 ATTRIBUTES


=head2 AccountId => Str

  An ID of the AWS account that could not be processed.


=head2 ProcessingResult => Str

  The reason for why an account could not be processed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

