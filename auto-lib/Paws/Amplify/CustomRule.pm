package Paws::Amplify::CustomRule;
  use Moose;
  has Condition => (is => 'ro', isa => 'Str', request_name => 'condition', traits => ['NameInRequest']);
  has Source => (is => 'ro', isa => 'Str', request_name => 'source', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Target => (is => 'ro', isa => 'Str', request_name => 'target', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CustomRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::CustomRule object:

  $service_obj->Method(Att1 => { Condition => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::CustomRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

Custom rewrite / redirect rule.

=head1 ATTRIBUTES


=head2 Condition => Str

  The condition for a URL rewrite or redirect rule, e.g. country code.


=head2 B<REQUIRED> Source => Str

  The source pattern for a URL rewrite or redirect rule.


=head2 Status => Str

  The status code for a URL rewrite or redirect rule.


=head2 B<REQUIRED> Target => Str

  The target pattern for a URL rewrite or redirect rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

