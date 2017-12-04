package Paws::CognitoIdp::NotifyEmailType;
  use Moose;
  has HtmlBody => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str', required => 1);
  has TextBody => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::NotifyEmailType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::NotifyEmailType object:

  $service_obj->Method(Att1 => { HtmlBody => $value, ..., TextBody => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::NotifyEmailType object:

  $result = $service_obj->Method(...);
  $result->Att1->HtmlBody

=head1 DESCRIPTION

The notify email type.

=head1 ATTRIBUTES


=head2 HtmlBody => Str

  The HTML body.


=head2 B<REQUIRED> Subject => Str

  The subject.


=head2 TextBody => Str

  The text body.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

