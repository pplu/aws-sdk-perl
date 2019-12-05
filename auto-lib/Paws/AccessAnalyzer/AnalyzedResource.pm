package Paws::AccessAnalyzer::AnalyzedResource;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'actions', traits => ['NameInRequest']);
  has AnalyzedAt => (is => 'ro', isa => 'Str', request_name => 'analyzedAt', traits => ['NameInRequest'], required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has Error => (is => 'ro', isa => 'Str', request_name => 'error', traits => ['NameInRequest']);
  has IsPublic => (is => 'ro', isa => 'Bool', request_name => 'isPublic', traits => ['NameInRequest'], required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', request_name => 'resourceArn', traits => ['NameInRequest'], required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest'], required => 1);
  has SharedVia => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'sharedVia', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::AnalyzedResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::AnalyzedResource object:

  $service_obj->Method(Att1 => { Actions => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::AnalyzedResource object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Contains details about the analyzed resource.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[Str|Undef]

  The actions that an external principal is granted permission to use by
the policy that generated the finding.


=head2 B<REQUIRED> AnalyzedAt => Str

  The time at which the resource was analyzed.


=head2 B<REQUIRED> CreatedAt => Str

  The time at which the finding was created.


=head2 Error => Str

  An error message.


=head2 B<REQUIRED> IsPublic => Bool

  Indicates whether the policy that generated the finding grants public
access to the resource.


=head2 B<REQUIRED> ResourceArn => Str

  The ARN of the resource that was analyzed.


=head2 B<REQUIRED> ResourceType => Str

  The type of the resource that was analyzed.


=head2 SharedVia => ArrayRef[Str|Undef]

  Indicates how the access that generated the finding is granted.


=head2 Status => Str

  The current status of the finding generated from the analyzed resource.


=head2 B<REQUIRED> UpdatedAt => Str

  The time at which the finding was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

