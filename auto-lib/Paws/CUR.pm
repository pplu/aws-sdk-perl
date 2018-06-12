package Paws::CUR;
  use Moose;
  sub service { 'cur' }
  sub signing_name { 'cur' }
  sub version { '2017-01-06' }
  sub target_prefix { 'AWSOrigamiServiceGatewayService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub DeleteReportDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CUR::DeleteReportDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReportDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CUR::DescribeReportDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutReportDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CUR::PutReportDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllReportDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReportDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReportDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReportDefinitions }, @{ $next_result->ReportDefinitions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReportDefinitions') foreach (@{ $result->ReportDefinitions });
        $result = $self->DescribeReportDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReportDefinitions') foreach (@{ $result->ReportDefinitions });
    }

    return undef
  }


  sub operations { qw/DeleteReportDefinition DescribeReportDefinitions PutReportDefinition / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CUR - Perl Interface to AWS AWS Cost and Usage Report Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CUR');
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

All public APIs for AWS Cost and Usage Report service

For the AWS API documentation, see L<https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-reports-costusage.html>


=head1 METHODS

=head2 DeleteReportDefinition

=over

=item [ReportName => Str]


=back

Each argument is described in detail in: L<Paws::CUR::DeleteReportDefinition>

Returns: a L<Paws::CUR::DeleteReportDefinitionResponse> instance

Delete a specified report definition


=head2 DescribeReportDefinitions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CUR::DescribeReportDefinitions>

Returns: a L<Paws::CUR::DescribeReportDefinitionsResponse> instance

Describe a list of report definitions owned by the account


=head2 PutReportDefinition

=over

=item ReportDefinition => L<Paws::CUR::ReportDefinition>


=back

Each argument is described in detail in: L<Paws::CUR::PutReportDefinition>

Returns: a L<Paws::CUR::PutReportDefinitionResponse> instance

Create a new report definition




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllReportDefinitions(sub { },[MaxResults => Int, NextToken => Str])

=head2 DescribeAllReportDefinitions([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReportDefinitions, passing the object as the first parameter, and the string 'ReportDefinitions' as the second parameter 

If not, it will return a a L<Paws::CUR::DescribeReportDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

