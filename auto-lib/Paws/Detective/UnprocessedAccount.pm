package Paws::Detective::UnprocessedAccount;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has Reason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::UnprocessedAccount

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Detective::UnprocessedAccount object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Reason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Detective::UnprocessedAccount object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Amazon Detective is currently in preview.

A member account that was included in a request but for which the
request could not be processed.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The AWS account identifier of the member account that was not
processed.


=head2 Reason => Str

  The reason that the member account request could not be processed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

