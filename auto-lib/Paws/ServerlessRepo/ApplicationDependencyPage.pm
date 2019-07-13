package Paws::ServerlessRepo::ApplicationDependencyPage;
  use Moose;
  has Dependencies => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ApplicationDependencySummary]', request_name => 'dependencies', traits => ['NameInRequest'], required => 1);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ApplicationDependencyPage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::ApplicationDependencyPage object:

  $service_obj->Method(Att1 => { Dependencies => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::ApplicationDependencyPage object:

  $result = $service_obj->Method(...);
  $result->Att1->Dependencies

=head1 DESCRIPTION

A list of application summaries nested in the application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Dependencies => ArrayRef[L<Paws::ServerlessRepo::ApplicationDependencySummary>]

  An array of application summaries nested in the application.


=head2 NextToken => Str

  The token to request the next page of results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

