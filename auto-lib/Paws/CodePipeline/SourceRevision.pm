package Paws::CodePipeline::SourceRevision;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', request_name => 'actionName', traits => ['NameInRequest'], required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', request_name => 'revisionId', traits => ['NameInRequest']);
  has RevisionSummary => (is => 'ro', isa => 'Str', request_name => 'revisionSummary', traits => ['NameInRequest']);
  has RevisionUrl => (is => 'ro', isa => 'Str', request_name => 'revisionUrl', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::SourceRevision

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::SourceRevision object:

  $service_obj->Method(Att1 => { ActionName => $value, ..., RevisionUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::SourceRevision object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

  


=head2 RevisionId => Str

  


=head2 RevisionSummary => Str

  


=head2 RevisionUrl => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

