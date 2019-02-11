package Paws::ComprehendMedical;
  use Moose;
  sub service { 'comprehendmedical' }
  sub signing_name { 'comprehendmedical' }
  sub version { '2018-10-30' }
  sub target_prefix { 'ComprehendMedical_20181030' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub DetectEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::DetectEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectPHI {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::DetectPHI', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DetectEntities DetectPHI / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical - Perl Interface to AWS AWS Comprehend Medical

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ComprehendMedical');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Comprehend Medical extracts structured information from unstructured
clinical text. Use these actions to gain insight in your documents.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30>


=head1 METHODS

=head2 DetectEntities

=over

=item Text => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::DetectEntities>

Returns: a L<Paws::ComprehendMedical::DetectEntitiesResponse> instance

Inspects the clinical text for a variety of medical entities and
returns specific information about them such as entity category,
location, and confidence score on that information .


=head2 DetectPHI

=over

=item Text => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::DetectPHI>

Returns: a L<Paws::ComprehendMedical::DetectPHIResponse> instance

Inspects the clinical text for personal health information (PHI)
entities and entity category, location, and confidence score on that
information.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

