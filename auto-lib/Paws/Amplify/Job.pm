package Paws::Amplify::Job;
  use Moose;
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::Step]', request_name => 'steps', traits => ['NameInRequest'], required => 1);
  has Summary => (is => 'ro', isa => 'Paws::Amplify::JobSummary', request_name => 'summary', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::Job

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::Job object:

  $service_obj->Method(Att1 => { Steps => $value, ..., Summary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::Job object:

  $result = $service_obj->Method(...);
  $result->Att1->Steps

=head1 DESCRIPTION

Structure for an execution job for an Amplify App.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Steps => ArrayRef[L<Paws::Amplify::Step>]

  Execution steps for an execution job, for an Amplify App.


=head2 B<REQUIRED> Summary => L<Paws::Amplify::JobSummary>

  Summary for an execution job for an Amplify App.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

