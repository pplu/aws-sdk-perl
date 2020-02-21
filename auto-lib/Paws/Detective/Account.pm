package Paws::Detective::Account;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::Account

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Detective::Account object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., EmailAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Detective::Account object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Amazon Detective is currently in preview.

An AWS account that is the master of or a member of a behavior graph.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

  The account identifier of the AWS account.


=head2 B<REQUIRED> EmailAddress => Str

  The AWS account root user email address for the AWS account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

